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
        // Aplicando as exceções de rodas que não devem ser tratadas
        if(!Authenticate::isRouteExcept() && request()->method() != 'DELETE') {
            
            if($columns[0] == '*') {
                $columns = Authenticate::$allowedAttributes;
            } else {
                $columns = array_intersect($columns, Authenticate::$allowedAttributes);
            }
        }
        return parent::get($columns);
    }

}
