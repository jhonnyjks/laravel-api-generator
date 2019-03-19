<?php
namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use App\Models\Profile;
use App\Models\UserProfile;
class AuthController extends Controller
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
            'login' => 'required|numeric|between:100000,99999999999999999999999|unique:users,login',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|between:6,15'
        ]);

        $user = new User([
            'user_type_id' => 1,
            'user_situation_id' => 1,
            'login' => $request->login,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);
        $user->save();
        return response()->json([
            'message' => 'Acesso criado com sucesso!'
        ], 201);
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
        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Acesso não autorizado.'
            ], 401);
        $user = $request->user();
        $tokenResult = $user->createToken('Token pessoal '.$user->id);
        $token = $tokenResult->token;

        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addDays(1);
        else $token->expires_at = Carbon::now()->addMinutes(30);

        $profileIds = [];
        $userProfiles = UserProfile::where(['user_id' => $user->id])->get(['profile_id']);

        foreach($userProfiles as $profile) {
            $profileIds[] = $profile->profile_id;
        }
   
        $token->save();

        return response()->json([
            'user_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString(),
            'profiles' => Profile::whereIN('id',$profileIds)->get(['id', 'noun', 'description'])
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
}
