<?php
namespace App\Http\Controllers\API;

use App\Http\Controllers\AppBaseController;
use App\Models\Entity;
use App\Models\EntityUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use App\Models\Profile;
use App\Models\UserProfile;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use App\Mail\NewPasswordMail;
use App\Models\Audit;
use App\Models\User as UserLocal;

use LdapRecord\Container;
use LdapRecord\Models\ActiveDirectory\User as LdapUser;

class AuthAPIController extends AppBaseController
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
            'name' => 'required|between:8,150',
            'login' => 'required|between:5,50|unique:users,login,NULL,id,deleted_at,NULL',
            'email' => 'required|email|unique:users,email,NULL,id,deleted_at,NULL',
            'password' => 'required|string|between:6,15',
        ]);

        $user = User::create([
            'general_status_id'=>1,
            'auth_type_id' => 1,
            'user_type_id' => 3,
            'user_situation_id' => 1,
            'name' => $request->name,
            'login' => !empty($request->login) ? $request->login : null,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        $user_profile = UserProfile::create([
            'user_id' => $user->id,
            'profile_id' => 2,
        ]);

        $user->sendEmailVerificationNotification();

        return response()->json([
            'message' => 'Enviamos um e-mail com as instruções para ativar sua conta no sistema. Por favor, verifique sua caixa de entrada.'
        ]);
    }

    /**
     * Altera a senha do usuário autenticado
     *
     * @param  [string] password
     * @return [string] new_password
     */
    public function changePassword(Request $request)
    {
        if (!empty($request['login'])) {
            $user = UserLocal::where('login', $request['login'])
                                ->orWhere('email', $request['login'])
                                ->first();
    
            if ($user) {
                $newPassword = Str::random(8);
                $user->password = Hash::make($newPassword);
                $user->save();
    
                Mail::to($user->email)->send(new NewPasswordMail($user, $newPassword));
            }
        }
    
        return response()->json(['message' => 'Se o usuário existe, uma senha temporária foi enviada para o email cadastrado!']);
    }    

    /**
     * Altera os dados do usuário autenticado
     *
     * @param  [string] password
     * @return [string] new_password
     */
    public function changeUserData(Request $request)
    {
        $user = $request->user();

        $request->validate([
            'login' => 'required_without:email|between:3,20|unique:users,login,'.$user->id,
            'email' => 'required_without:login|email|unique:users,email,'.$user->id,
            'name' => 'required|string|between:6,150',
            'celphone' => 'integer|between:10000000000,99999999999|unique:users,celphone,'.$user->id
        ]);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->login = $request->login;
        $user->celphone = $request->celphone;
        $user->document = $request->document;
        $user->hiring_type_id = $request->hiring_type_id;
        $user->education_level_id = $request->education_level_id;
        $user->position = $request->position;
        $user->save();
        return $this->sendResponse($user->toArray(), 'Usuário alterado com sucesso!');
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

        $userLocal = UserLocal::where('login', $request->login)->first();

        if($userLocal && $userLocal->email_verified_at == null) {
            $this->saveAudit($userLocal,false);
            return response()->json([
                'message' => 'Enviamos um e-mail com as instruções para ativar sua conta no sistema. Por favor, verifique sua caixa de entrada.'
            ]);
        }

        if(!$userLocal || $userLocal->general_status_id === 2) {
            $this->saveAudit($userLocal,false);
            return response()->json([
                'message' => 'Acesso não autorizado. Usuário inativo.'
            ], 401);
        }

        if ($userLocal->auth_type_id === 1){
            
            $credentials = request([!empty($request->login) ? 'login' : 'email', 'password']);

            if (!Auth::attempt($credentials)) {
                $this->saveAudit($userLocal,false);
    
                return response()->json([
                    'message' => 'Acesso não autorizado.'
                ], 401);
            }

        } else if ($userLocal->auth_type_id === 2) {
            
            $connection = Container::getConnection('default');
            $ldapUser = LdapUser::findByOrFail('samaccountname', $request->login);

            if (!$connection->auth()->attempt($ldapUser->getDn(), $request->password)) {
                $this->saveAudit($userLocal,false);
    
                return response()->json([
                    'message' => 'Acesso não autorizado.'
                ], 401);
            }

        }

        $user = User::where('login', $request->login)->first();

        $tokenResult = $user->createToken('Token pessoal ' . $user->id);
        $token = $tokenResult->token;

        if ($request->remember_me) {
            $token->update([
                'expires_at' => Carbon::now()->addDays(5)
            ]);
        } else {
            $token->update([
                'expires_at' => Carbon::now()->addHours(8)
            ]);
        }

        $profileIds = [];
        $userProfiles = UserProfile::where(['user_id' => $user->id])->get(['id','profile_id']);

        foreach ($userProfiles as $profile) {
            $profileIds[] = $profile->profile_id;
        }

        $this->saveAudit($userLocal,true);

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
                'user' => User::with('cityUsers')->find($user->id),
                'profiles' => Profile::whereIn('id', $profileIds)->get(['id', 'noun', 'description']),
                'entities' => EntityUser::with(['entity'])->where('user_id', $user->id)->whereNull('deleted_at')->get()
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
        $userProfiles = UserProfile::where(['user_id' => $user->id])->get(['id','profile_id']);

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
                'user' => User::with('cityUsers')->find($user->id)->toArray(),
                'profiles' => Profile::whereIn('id', $profileIds)->get(['id', 'noun', 'description']),
                'entities' => EntityUser::with(['entity'])->where('user_id', $user->id)->whereNull('deleted_at')->get()
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
        $user = $request->user();
        Audit::salvar($request->user(),'loggedout');

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
                'attributes' => class_exists($model) ? (new $model())->fillable : ['_show'],
                'scopes' => class_exists($model) ? (property_exists($model, 'scopes') ? $model::$scopes : []) : []
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

    private function saveAudit($userLocal,$check){
        $data = [
            'login' => $userLocal->login,
            'autenticado' => $check,
        ];
        Audit::salvar($userLocal,'loggedin',json_encode($data),$userLocal->id);

    }

    public function verifiedEmail(Request $request)
    {
        // Validar os parâmetros obrigatórios
        $request->validate([
            'id' => 'required|string',
            'hash' => 'required|string',
        ]);

        // Buscar o usuário pelo ID
        $user = User::find($request->id);

        // Verificar se o usuário existe
        if (!$user) {
            return response()->json(['message' => 'Usuário não encontrado.'], 404);
        }

        // Verificar se o hash corresponde
        $expectedHash = sha1($user->getEmailForVerification()); // Método do Laravel para gerar o hash do e-mail

        if ($expectedHash !== $request->hash) {
            return response()->json(['message' => 'Token inválido ou expirado.'], 400);
        }

        // Atualizar o campo `email_verified_at`
        $user->email_verified_at = now();
        $user->save();

        return response()->json(['message' => 'E-mail verificado com sucesso. Você pode fazer login agora!'], 200);
    }

    /**
     * Definir o perfil e permissões do token em sessão
     *
     * @return [json] user object
     */
    public function refresh()
    {
        $token = auth()->user()->token();

        if($token->expires_at < Carbon::now()) {
            $token->revoke();

            return response()->json([
                'success' => false,
                'message' => 'Sessão expirada!'
            ], 401);
        }

        if($token->revoked) {
            return response()->json([
                'success' => false,
                'message' => 'Sessão encerrada!'
            ], 401);
        }

        $token->update([
            'expires_at' => Carbon::now()->addMinutes(5)
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Sessão renovada com sucesso!',
            'data' => [
                'expires_at' => Carbon::parse(
                    $token->expires_at
                )->toDateTimeString()
            ]
        ]);
    }

}
