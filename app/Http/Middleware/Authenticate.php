<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Auth\AuthenticationException;
use App\Models\Permission;
class Authenticate extends Middleware
{

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

                $this->hasPermission($request, $guard);

                return $this->auth->shouldUse($guard);
            }
        }

        throw new AuthenticationException(
            'Não autenticado.', $guards, $this->redirectTo($request)
        );
    }

    private function hasPermission($request, $guard) {

        $user = $this->auth->guard($guard)->user();

        // $permissions = 

        return;

        throw new AuthenticationException(
            'Sem permissão para essa ação.', $guards, $this->redirectTo($request)
        );
    }
}
