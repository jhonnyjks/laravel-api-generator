<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Auth\AuthenticationException;
use App\Models\Permission;
class Authenticate extends Middleware
{
    //Rotas que não necessitam de sessão
    private static $except = ['auth/define_profile'];
    private static $isRouteExcept = false;

    // Mapeando os métodos às permissões (Action->code)
    private $methodToPermission = [
        'GET' => [1, 3, 5, 7, 9, 11, 13, 15],
        'POST' => [2, 3, 6, 7, 10, 11, 14, 15],
        'PUT' => [4, 5, 6, 7, 12, 13, 14, 14],
        'DELETE' => [8, 9, 10, 11, 12, 13, 14, 15]
    ];

    // Atributos da model que foram permitidos nessa requisição
    public static $allowedAttributes = Array();

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string[]  ...$guards
     * @return mixed
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    public function handle($request, Closure $next, ...$guards)
    {
        $this->authenticate($request, $guards);

        return $next($request);
    }

    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string
     */
    protected function redirectTo($request)
    {
        //Esse projeto é somente back-end, portanto penas respostas em JSON
        //TODO: Tratar resposta para acessos sem o header "Accept: application/json"

        // if (!$request->expectsJson()) {
            // return route('login');
        // } else {
        return route('api.auth.login');
        // }

    }

    /**
     * Determine if the user is logged in to any of the given guards.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  array  $guards
     * @return void
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    protected function authenticate($request, array $guards)
    {
        if (empty($guards)) {
            $guards = [null];
        }

        foreach ($guards as $guard) {
            if ($this->auth->guard($guard)->check()) {

                $this->testPermissionBefore($request, $guard);

                return $this->auth->shouldUse($guard);
            }
        }

        throw new AuthenticationException(
            'Não autenticado.', $guards, $this->redirectTo($request)
        );
    }

    private function testPermissionBefore($request, $guard) {

        $token = $this->auth->guard($guard)->user()->token();
        $scopes = $token->scopes;
        $routeUri = preg_replace('[\/\{(\w+)\}]', '', str_replace('api/', '', $request->route()->uri()));

        if(in_array($routeUri, static::$except)) {
            static::$isRouteExcept = true;
            return;
        }elseif(empty($scopes[$routeUri])) {
            throw new AuthenticationException(
                'Se o caminho existe, a sessão não tem permissão de acesso.', [], $this->redirectTo($request)
            );
        }

        //Verifica em todos os atributos do usuário e seleciona os atributos que se
        //encaixam no método requisitado
        foreach ($scopes[$routeUri]['actions'] as $attr => $permission) {
            if(in_array($permission, $this->methodToPermission[$request->method()])) {
                static::$allowedAttributes[] = $attr;
            }
        }

        if(!empty(static::$allowedAttributes)) {
            switch ($request->method()) {
                case 'GET':
                    //ID é permanente no GET
                array_unshift(static::$allowedAttributes, 'id');
                break;

                case 'POST':
                case 'PUT':
                    // Se os atributos de interseção forem mais que os da requisição, significa que
                    // a requisição tem atributos não permitidos
                    // dd(array_values(array_diff(array_keys($request->all()), static::$allowedAttributes)));
                if(!empty(array_diff(array_keys($request->all()), static::$allowedAttributes))) {
                    throw new AuthenticationException(
                        'A sessão não tem permissão de acesso ao atributo ['.
                        array_values(array_diff(array_keys($request->all()), static::$allowedAttributes))[0].
                        '] no método ['.$request->method().']', [], $this->redirectTo($request)
                    );
                }
                break;
            }
        } else {
            throw new AuthenticationException(
                'Se o caminho existe, a sessão não tem permissão de acesso a nenhum atributo no método '. 
                $request->method(), [], $this->redirectTo($request)
            );
        }
    }

    public static function isRouteExcept() {
        return static::$isRouteExcept;
    }
}
/* Definição atual das permissões dos atributos (Action->conde).
 * Octal não foi suficiente, então fiz hexadecimal.
0 - No access/Null
1 - Read
2 - Insert
3 - Read, Insert
4 - Update
5 - Read, Update
6 - Insert, Update
7 - Read, Insert, Update
8 - Delete
9 - Read, Delete
10 - Insert, Delete
11 - Read, Insert, Delete
12 - Update, Delete
13 - Read, Update, Delete
14 - Insert, Update, Delete
15 - Read, Insert, Update, Delete
*/
