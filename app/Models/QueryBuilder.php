<?php

namespace App\Models;

use Illuminate\Database\Query\Builder;
use App\Http\Middleware\Authenticate;
/**
 * Class BaseModel
 * Base que os demais models devem extender
 * @package App\Models
 * @version February 7, 2019, 5:11 am UTC
 */
class QueryBuilder extends Builder
{

    /**
     * Execute the query as a "select" statement.
     * Redeclarada para filtrar os atributos e retornar apenas os permitidos.
     *
     * @param  array  $columns
     * @return \Illuminate\Support\Collection
     */
    public function get($columns = ['*'])
    {
        $route = Authenticate::$routeUri;

        // Caso a rota venha em parâmetros ('with', por exemplo), alterar para a rota certa.
        // Isso permite buscar informações aninhadas (relações) em uma só requisição.
        if(sizeof(Authenticate::$allowedAttributes) > 1 && !empty(Authenticate::$allowedAttributes[$this->from])) {
            $route = $this->from;
        }

        // Aplicando as exceções de rotas que não devem ser tratadas
        if(!Authenticate::isRouteExcept() && request()->method() != 'DELETE' && $this->from == $route) 
        {
            
            if($columns[0] == '*') 
            {
                $columns = Authenticate::$allowedAttributes[$route];
            }
            else 
            {
                $columns = array_intersect($columns, Authenticate::$allowedAttributes[$route]);
            }

            // Atributos que devem ser retornados sempre, independente de validação.
            if(array_search('id', $columns) === false) $columns[] = 'id';
        }
        return parent::get($columns);
    }

}
