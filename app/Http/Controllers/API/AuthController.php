<?php
namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;
use App\Models\Person;
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
            'dip' => 'required|numeric|between:100000,99999999999999999999999999999999|exists:persons|unique:accesses,login',
            'email' => 'required|email|unique:accesses',
            'password' => 'required|string|between:6,15'
        ]);

        $person = Person::where(['dip' => $request->dip])->first();

        $user = new User([
            'person_id' => $person->id,
            'type_access_id' => 1,
            'status_access_id' => 1,
            'login' => $request->dip,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);
        $user->save();
        return response()->json([
            'message' => 'Successfully created user!'
        ], 201);
    }

    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function login(Request $request)
    {
        $request->validate([
            'login' => 'required_without:email|numeric|between:100000,99999999999999999999999999999999|exists:accesses',
            'email' => 'required_without:login|email|exists:accesses',
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

        $token->save();
        return response()->json([
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
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
            'message' => 'Successfully logged out'
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
}
