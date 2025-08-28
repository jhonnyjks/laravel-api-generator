<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Auth\AuthenticationException;
use Carbon\Carbon;

class Authenticate extends Middleware
{
    //Endpoints que não necessitam de perfil definido
    private static $except = [
        'auth/define_profile',
        'auth/permissions/use-all',
        'auth/user',
        'auth/validate',
        'auth/change-password',
        'auth/change-user-data',
        'notifications', // Enquanto não existe CRUD
        'user_attending_bidding',
        'processes/answer',
        'processes/cancel',
        'processes/answer/attendant',
        'scopes',
        'user_profile_scopes', 
        'migrate-users', 
        'start-migration',
        'migration-status',

    ];

    private static $isRouteExcept = false;

    //Endpoints que não necessitam de autenticação (públicos)
    private static $publicRoutes = [
        'auth/login',
        'auth/logout',
        'auth/signup',
        'auth/change-password',
        'auth/verified-email',
        'public/posts',
        'public/banners',
        'public/settings',
        'public/protocols',
        'public/cities',
        'public/notices',
        'public/galery',
        'public/schools',
        'public/city_areas',
        'tests/', 
        'migrate-users',
        'start-migration',
        'migration-status',
    ];

    //URI formatada para a validação via $scopes
    public static $routeUri = null;

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

        if ($token->revoked || strtotime($token->expires_at) < time()) {
            // Se o token expirou, não tem como validar as permissões
            // e o usuário não tem permissão de acesso a nada

            $token->revoke();

            throw new AuthenticationException(
                'Não autenticado.'
            );
        } else if($token->expires_at->diffInMinutes($token->updated_at) * 0.5 > Carbon::now()->diffInMinutes($token->expires_at)) {
            // Se o token não expirou, mas está perto de expirar, atualiza o tempo de expiração
            // para o mesmo tempo que o token foi criado
            // Isso é necessário para que o token não expire enquanto o usuário está interagindo com frequência.
            // TODO: substituir pelo uso do refresh token
            $token->update([
                'updated_at' => Carbon::now(),
                'expires_at' => Carbon::now()
                ->addMinutes($token->expires_at->diffInMinutes($token->updated_at))
            ]);
        }

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

        // Carrega permissões
        foreach (array_keys($this->methodToPermission) as $method) {
    
            //Verifica em todos os atributos do usuário e seleciona os atributos que se
            //encaixam no método requisitado
            foreach ($scopes[static::$routeUri]['actions'] as $attr => $permission) {
                if (in_array($permission, $this->methodToPermission[$method])) {
                    static::$allowedAttributes[static::$routeUri][$method][] = $attr;
                }
            }

            if (!empty(static::$allowedAttributes[static::$routeUri][$method])) {
                switch ($method) {
                    case 'GET':
                        //ID é permanente no GET
                        array_unshift(static::$allowedAttributes[static::$routeUri][$method], 'id');
                        $this->definePermissionsFromParams($request, $scopes);
                        break;

                    case 'PUT':
                        //ID é permanente no PUT
                        array_unshift(static::$allowedAttributes[static::$routeUri][$method], 'id');
                    case 'POST':
                        
                        break;
                }
            }
        }

        // Se a rota não tem permissão de acesso a nenhum atributo, então não tem permissão de acesso
        if (empty(static::$allowedAttributes[static::$routeUri][$request->method()])) {
            throw new AuthenticationException(
                'Se o caminho existe, a sessão não tem permissão de acesso a nenhum atributo no método ' .
                $request->method(),
                [],
                $this->redirectTo($request)
            );
        }

        // Se os atributos de interseção forem mais que os da requisição, significa que
        // a requisição tem atributos não permitidos
        if ('POST' == $request->method() &&
            !empty(array_diff(
                array_keys($request->all()),
                static::$allowedAttributes[static::$routeUri][$request->method()]
                )
            )
        ) {
            throw new AuthenticationException(
                'A sessão não tem permissão de acesso ao atributo [' .
                    array_values(
                        array_diff(
                            array_keys($request->all()),
                            static::$allowedAttributes[static::$routeUri][$request->method()]
                        )
                    )[0] .
                    '] no método [' . $request->method() . ']',
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
                if (strpos($relation[0], '.') > -1) $relation[0] = explode('.', $relation[0]);

                // Buscando a rota que precisa ser validada, percorrendo as relações requisitadas
                $relRoute = static::$routeUri;
                $rel = is_array($relation[0]) ? $relation[0] : [$relation[0]];
                for ($i = 0; $i < sizeof($rel); $i++) {
                    if(
                        !empty($scopes[$relRoute]['relationships']) && 
                        !empty($scopes[$relRoute]['relationships'][$rel[$i]])
                    ) {
                        foreach ( $scopes as $iRoute => $scope ) {
                            if ( $scopes[$relRoute]['relationships'][$rel[$i]]['entity'] == $scope['entity'] ) {
                                $relRoute = $iRoute;
                                break;
                            }
                        }
                    } else {
                        throw new AuthenticationException(
                            "Se há permissão à rota '$relRoute', a relação '$rel[$i]' não existe. Favor, contactar o suporte.",
                            [],
                            $this->redirectTo($request)
                        );
                    }
                }

                if ($relRoute != static::$routeUri && !in_array($relRoute, static::$except) && empty($scopes[$relRoute])) {
                    throw new AuthenticationException(
                        "Se o caminho '$relation[0]' existe, a sessão não tem permissão de acesso a essa relação.",
                        [],
                        $this->redirectTo($request)
                    );
                } else {
                    $relation[0] = $relRoute;
                }

                // Evitando que a própria rota tenha seus atributos duplicados
                if($relRoute == static::$routeUri) continue;
                
                // Carrega permissões
                foreach (array_keys($this->methodToPermission) as $method) {
                    //Verifica em todos os atributos da rota e seleciona os atributos que se
                    //encaixam no método
                    foreach ($scopes[$relRoute]['actions'] as $attr => $permission) {
                        if (in_array($permission, $this->methodToPermission[$method])) {
                            static::$allowedAttributes[$relRoute][$method][] = $attr;
                        }
                    }

                    if (!empty(static::$allowedAttributes[$relRoute][$method])) {

                        //Tratando apenas GET
                        switch ($method) {
                            case 'GET':
                                //ID é permanente no GET
                                array_unshift(static::$allowedAttributes[$relRoute][$method], 'id');
                                break;
                        }
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
