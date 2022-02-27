<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Auth\AuthenticationException;

class Authenticate extends Middleware
{
    //Endpoints que não necessitam de perfil definido
    private static $except = [
        'auth/define_profile',
        'auth/permissions/use-all',
        'auth/user',
        'auth/validate',
        'auth/change-password',
        'auth/change-user-data'
    ];

    private static $isRouteExcept = false;

    //Endpoints que não necessitam de autenticação (públicos)
    private static $publicRoutes = [
        'auth/login',
        'auth/signup'
    ];


    //URI formatada para a validação via $scopes
    public static $routeUri = null;
    public static $routesFromQueryStr = [];

    // Mapeando os métodos às permissões (Action->code)
    private $methodToPermission = [
        'GET' => [1, 3, 5, 7, 9, 11, 13, 15],
        'POST' => [2, 3, 6, 7, 10, 11, 14, 15],
        'PUT' => [4, 5, 6, 7, 12, 13, 14, 15],
        'DELETE' => [8, 9, 10, 11, 12, 13, 14, 15]
    ];

    // Atributos das models que foram permitidos nessa requisição, mapeados pela rota
    public static $allowedAttributes = array();

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
        //Obtendo URI formatada para a validação via $scopes
        static::$routeUri = preg_replace('[\/\{(\w+)\}]', '', str_replace('api/', '', $request->route()->uri()));

        if (!in_array(static::$routeUri, static::$publicRoutes)) {
            $this->authenticate($request, $guards);
        } else {
            static::$isRouteExcept = true;
        }

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
        //Esse projeto é somente back-end, portanto apenas respostas em JSON
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

                $this->testPermission($request, $guard);

                return $this->auth->shouldUse($guard);
            }
        }

        throw new AuthenticationException(
            'Não autenticado.',
            $guards,
            $this->redirectTo($request)
        );
    }

    private function testPermission($request, $guard)
    {

        $token = $this->auth->guard($guard)->user()->token();
        $scopes = $token->scopes;

        if (in_array(static::$routeUri, static::$except)) {
            static::$isRouteExcept = true;
            return;
        } elseif (empty($scopes[static::$routeUri])) {
            throw new AuthenticationException(
                'Se o caminho existe, a sessão não tem permissão de acesso.',
                [],
                $this->redirectTo($request)
            );
        }

        //Verifica em todos os atributos do usuário e seleciona os atributos que se
        //encaixam no método requisitado
        foreach ($scopes[static::$routeUri]['actions'] as $attr => $permission) {
            if (in_array($permission, $this->methodToPermission[$request->method()])) {
                static::$allowedAttributes[static::$routeUri][] = $attr;
            }
        }

        if (!empty(static::$allowedAttributes[static::$routeUri])) {
            switch ($request->method()) {
                case 'GET':
                    //ID é permanente no GET
                    array_unshift(static::$allowedAttributes[static::$routeUri], 'id');
                    $this->definePermissionsFromParams($request, $scopes);
                    break;

                case 'PUT':
                    //ID é permanente no PUT
                    array_unshift(static::$allowedAttributes[static::$routeUri], 'id');
                case 'POST':
                    // Se os atributos de interseção forem mais que os da requisição, significa que
                    // a requisição tem atributos não permitidos
                    if (!empty(array_diff(array_keys($request->all()), static::$allowedAttributes[static::$routeUri]))) {
                        throw new AuthenticationException(
                            'A sessão não tem permissão de acesso ao atributo [' .
                                array_values(array_diff(array_keys($request->all()), static::$allowedAttributes[static::$routeUri]))[0] .
                                '] no método [' . $request->method() . ']',
                            [],
                            $this->redirectTo($request)
                        );
                    }
                    break;
            }
        } else {
            throw new AuthenticationException(
                'Se o caminho existe, a sessão não tem permissão de acesso a nenhum atributo no método ' .
                    $request->method(),
                [],
                $this->redirectTo($request)
            );
        }
    }

    public static function isRouteExcept()
    {
        return static::$isRouteExcept;
    }

    /**
     * Validar e definir em $allowedAttributes as rotas e atributos vindos por parâmetros (Geralmente GET) 
     * @param  \Illuminate\Http\Request  $request
     * @return void
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    private function definePermissionsFromParams($request, $scopes)
    {
        if (!empty($request->with)) {
            foreach (explode(';', $request->with) as $relation) {
                
                if(trim($relation) == '') continue;

                $relation = explode(':', $relation);
                if (strpos($relation[0], '.') > -1) $relation[0] = explode('.', $relation[0])[1];

                if (!in_array($relation[0], static::$except) && empty($scopes[$relation[0]])) {
                    
                    $attr = str_replace(' ', '', ucwords(str_replace('_', ' ',$relation[0])));

                    if(!class_exists($classPath = '\\App\\Models\\'.$attr)) {

                        // Verificando se a relação $attr tem permissão por ser um atributo da classe da rota static::$routeUri
                        if(!$this->hasPermOnScope($attr, $scopes[static::$routeUri]) && empty($scopes[$this->toSnakeCase($attr)])) {
                            
                            throw new AuthenticationException(
                                "Se o caminho '$relation[0]' existe, a sessão não tem permissão de acesso.",
                                [],
                                $this->redirectTo($request)
                            );
                            
                        } else {
                            $routeEntity = '\\App\\Models\\'.$scopes[static::$routeUri]['entity'];
                            static::$routesFromQueryStr[] = $classPath = (new $routeEntity)->$attr()->getRelated()->table;

                            if (!in_array($classPath, static::$except) && empty($scopes[$classPath])) {
                                throw new AuthenticationException(
                                    "Se o caminho '$relation[0]' existe, a sessão não tem permissão de acesso.",
                                    [],
                                    $this->redirectTo($request)
                                );
                            } else {
                                $relation[0] = $classPath;
                            }
                        }
                    } else {
                        static::$routesFromQueryStr[] = $classPath = (new $classPath)->table;
                        
                        if (!in_array($classPath, static::$except) && empty($scopes[$classPath])) {
                            throw new AuthenticationException(
                                "Se o caminho '$relation[0]' existe, a sessão não tem permissão de acesso.",
                                [],
                                $this->redirectTo($request)
                            );
                        } else {
                            $relation[0] = $classPath;
                        }
                    }
                        
                    
                }

                //Verifica em todos os atributos da rota e seleciona os atributos que se
                //encaixam no método requisitado
                foreach ($scopes[$relation[0]]['actions'] as $attr => $permission) {
                    if (in_array($permission, $this->methodToPermission[$request->method()])) {
                        static::$allowedAttributes[$relation[0]][] = $attr;
                    }
                }

                if (!empty(static::$allowedAttributes[$relation[0]])) {

                    //Tratando apenas GET
                    switch ($request->method()) {
                        case 'GET':
                            //ID é permanente no GET
                            array_unshift(static::$allowedAttributes[$relation[0]], 'id');
                            break;
                    }
                }
            }
        }
    }

    /**
     * 
     * @param {String} $rel :: uma das relações da query string
     * @param {Array} $scope :: o escopo de acesso da rota requisitada
     * @returns 'true' se a relação é um atributo com permissão de acesso de pelo menos leitura
     */
    private function hasPermOnScope($rel, $scope) {
        $relation = $this->toSnakeCase($rel).'_id';
        if(!empty($scope['actions'][$relation]) && $scope['actions'][$relation] > 0) return true;
        return false;
    }

    /**
     * $input String em camelCase (Ex.: camelCaseString)
     * @returns String em snake_case (E.: snake_case_string)
     */
    private function toSnakeCase($input) {
        $pattern = '!([A-Z][A-Z0-9]*(?=$|[A-Z][a-z0-9])|[A-Za-z][a-z0-9]+)!';
        preg_match_all($pattern, $input, $matches);
        $ret = $matches[0];
        foreach ($ret as &$match) {
          $match = $match == strtoupper($match) ?
                strtolower($match) :
              lcfirst($match);
        }
        return implode('_', $ret);
      }
}
/* Definição atual das permissões dos atributos (Action->conde).
 * Octal não foi suficiente, então fiz hexadecimal.
 * 0 - No access/Null
 * 1 - Read
 * 2 - Insert
 * 3 - Read, Insert
 * 4 - Update
 * 5 - Read, Update
 * 6 - Insert, Update
 * 7 - Read, Insert, Update
 * 8 - Delete
 * 9 - Read, Delete
 * 10 - Insert, Delete
 * 11 - Read, Insert, Delete
 * 12 - Update, Delete
 * 13 - Read, Update, Delete
 * 14 - Insert, Update, Delete
 * 15 - Read, Insert, Update, Delete
 */
