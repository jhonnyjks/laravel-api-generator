<?php

namespace App\Models;

use Eloquent as Model;
use App\Models\QueryBuilder;
use ErrorException;
use Illuminate\Database\Eloquent\Relations\Relation;
use ReflectionClass;
use ReflectionMethod;

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

    public function relationships() {

        $model = new static;

        $relationships = [];

        foreach((new ReflectionClass($model))->getMethods(ReflectionMethod::IS_PUBLIC) as $i => $method)
        {
            if ($method->class != get_class($model) || $method->getName() == __FUNCTION__) {
                break;
            }

            if (!empty($method->getParameters())) {
                continue;
            }

            try {
                $return = $method->invoke($model);

                if ($return instanceof Relation) {
                    $relationships[$method->getName()] = [
                        'type' => (new ReflectionClass($return))->getShortName(),
                        'entity' => substr(get_class($return->getRelated()), strrpos(get_class($return->getRelated()), '\\')+1, strlen(get_class($return->getRelated())) - strrpos(get_class($return->getRelated()), '\\'))
                    ];
                }
            } catch(ErrorException $e) {
                continue;
            }
        }

        return $relationships;
    }

}
