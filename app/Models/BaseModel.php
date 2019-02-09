<?php

namespace App\Models;

use Eloquent as Model;
use App\Models\QueryBuilder;
/**
 * Class BaseModel
 * Base que os demais models devem extender
 * @package App\Models
 * @version February 7, 2019, 5:11 am UTC
 */
class BaseModel extends Model
{
    /**
     * Get a new query builder instance for the connection.
     * Necessário trazer para utilizar a QueryBuilder customizada
     *
     * @return \Illuminate\Database\Query\Builder
     */
    protected function newBaseQueryBuilder()
    {
        $connection = $this->getConnection();

        return new QueryBuilder(
            $connection, $connection->getQueryGrammar(), $connection->getPostProcessor()
        );
    }

}
