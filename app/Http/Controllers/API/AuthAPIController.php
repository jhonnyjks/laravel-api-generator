<?php
namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use App\Models\Profile;
use App\Models\UserProfile;
use Illuminate\Support\Facades\Route;

class AuthAPIController extends Controller
{
    //Campo usado com a senha na autenticação
    protected $username = 'login';

    /**
     * Create user
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] password
     * @param  [string] password_confirmation
     * @return [string] message
     */
    public function signup(Request $request)
    {
        $request->validate([
            'name' => 'between:8,150',
            'login' => 'between:5,50|unique:users,login',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|between:6,15'
        ]);

        $user = new User([
            'user_type_id' => 3,
            'user_situation_id' => 1,
            'login' => !empty($request->login) ? $request->login : null,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        $user->save();

        return $this->login($request);
    }

    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] user_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function login(Request $request)
    {
        $request->validate([
            'login' => 'required_without:email|between:5,20|exists:users',
            'email' => 'required_without:login|email|exists:users',
            'password' => 'required|string|between:6,15',
            'remember_me' => 'boolean'
        ]);

        $credentials = request([!empty($request->login) ? 'login' : 'email', 'password']);

        if (!Auth::attempt($credentials)) {

            return response()->json([
                'message' => 'Acesso não autorizado.'
            ], 401);
        }

        $user = $request->user();
        $tokenResult = $user->createToken('Token pessoal ' . $user->id);
        $token = $tokenResult->token;

        if ($request->remember_me) {
            $token->expires_at = Carbon::now()->addDays(1);
        } else {
            $token->expires_at = Carbon::now()->addMinutes(30);
        }

        $profileIds = [];
        $userProfiles = UserProfile::where(['user_id' => $user->id])->get(['profile_id']);

        foreach ($userProfiles as $profile) {
            $profileIds[] = $profile->profile_id;
        }

        $token->save();

        return response()->json([
            'message' => 'Usuário autenticado com sucesso!',
            'data' => [
                'token' => [
                    'token' => $tokenResult->accessToken,
                    'type' => 'Bearer',
                    'expires_at' => Carbon::parse(
                        $tokenResult->token->expires_at
                    )->toDateTimeString()
                ],
                'user' => User::find($user->id, ['login', 'name', 'email', 'last_access', 'created_at']),
                'profiles' => Profile::whereIN('id', $profileIds)->get(['id', 'noun', 'description'])
            ]
        ]);
    }

    /**
     * Validate token and return session data
     *
     * @return [string] user_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function validateToken()
    {
        $user = auth()->user();
        $token = $user->token();
        $profileIds = [];
        $userProfiles = UserProfile::where(['user_id' => $user->id])->get(['profile_id']);

        foreach ($userProfiles as $profile) {
            $profileIds[] = $profile->profile_id;
        }

        return response()->json([
            'message' => 'Usuário autenticado com sucesso!',
            'data' => [
                'token' => [
                    'profile_id' => $token->profile_id,
                    'expires_at' => Carbon::parse(
                        $token->expires_at
                    )->toDateTimeString()
                ],
                'user' => User::find($user->id, ['login', 'name', 'email', 'last_access', 'created_at']),
                'profiles' => Profile::whereIN('id', $profileIds)->get(['id', 'noun', 'description'])
            ]
        ]);
    }

    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json([
            'message' => 'Sessão encerrada com sucesso!'
        ]);
    }

    /**
     * Get the authenticated User
     *
     * @return [json] user object
     */
    public function user(Request $request)
    {
        return response()->json($request->user());
    }

    /**
     * Definir o perfil e permissões do token em sessão
     *
     * @return [json] user object
     */
    public function defineProfile($profileId)
    {
        return response()->json(auth()->user()->setProfile($profileId));
    }

    /**
     * Retorna todas as rotas que podem ser relacionadas a um perfil
     *
     * @return [json] routes[]
     */
    public function accessibleRoutes()
    {
        //Array de rotas únicas por model
        $routes = [];

        foreach (User::getRouteModelArray() as $route => $model) {
            $routes[] = [
                'route' => $route,
                'attributes' => class_exists($model) ? (new $model())->fillable : ['_show']
            ];
        }

        return response()->json([
            'success' => true,
            'message' => 'Rotas acessíveis obtidas com sucesso!',
            'data' => $routes
        ]);
    }

    /**
     * Libera todas as permissões para a sessão atual
     *
     * @return [json] result[]
     */
    public function setAllPermissions()
    {
        $response = $this->accessibleRoutes();

        $token = auth()->user()->token();
        $scopes = array();
        $permissions = $response->getData()->data;
        
        foreach ($permissions as $permission) {
            $actions = array_flip($permission->attributes);

            foreach ($actions as $action => $value) {
                $actions[$action] = 15;
            }

            if (!empty($actions)) {
                $path = str_replace('api/', '', $permission->route);

                $scopes[$path] = [
                    'actions' => $actions
                ];
            }
        }

        $token->update([
            'profile_id' => 1,
            'scopes' => $scopes
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Permissões liberadas com sucesso!',
            'data' => $scopes
        ]);
    }
}
