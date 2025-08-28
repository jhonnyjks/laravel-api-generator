<?php

namespace App\Repositories;

use Illuminate\Container\Container as Application;
use Illuminate\Database\Eloquent\Model;
use App\Constants\CODE_PER_OPERATION;
use Prettus\Repository\Eloquent\BaseRepository as InfBaseRepository;


abstract class BaseRepository extends InfBaseRepository
{
    /**
     * @var Model
     */
    protected $model;

    public function can($scope, $operation, $itemId = null): bool
    {
        $user = auth()->user();
        $scopes = $user->token()->scopes;
        $user_allowed_id = $user->id;
        $model = $this->model->newInstance();
        $model_name = !empty($modelName)
            ? $modelName
            : substr(
                get_class($model),
                strrpos(get_class($model), '\\')+1, strlen(get_class($model)) - strrpos(get_class($model), '\\')
            );

        $fk_id = $this->camelToSnake($model_name) . "_id";

        $model_exists = array_filter($scopes, function ($scope) use ($model_name) {
            return $scope["entity"] === $model_name;
        });

        $entityKey = array_keys($model_exists)[0];

        if (!empty($itemId)) {
            // Defina o namespace base dos modelos
            $baseNamespace = 'App\\Models\\';
            // Construa o nome completo da classe com o namespace
            $fullClassName = $baseNamespace . $model_name . 'Permission';
        
            // Verifique se a classe existe
            if (class_exists($fullClassName)) {
                // Crie uma nova instância do modelo
                $permission = $fullClassName::make();
        
                $permission = $permission->where($fk_id, $itemId)
                    ->where('user_allowed_id', $user_allowed_id)
                    ->where('scope', $scope)
                    ->first();
                
                if (!$permission) return false;
            } else {
                // A classe do modelo não existe, retorne false
                return false;
            }
        } elseif (
            empty($itemId)
            && (
                empty($model_exists)
                || empty($model_exists[$entityKey])
                || empty($model_exists[$entityKey]['scopes'])
                || empty($model_exists[$entityKey]['scopes'][$scope])
            )) {
            return false;
        }
    
        switch ($operation) {
            case 1:
                return in_array(
                    empty($itemId) ? $model_exists[$entityKey]['scopes'][$scope] : $permission->code,
                    CODE_PER_OPERATION::$Read
                );
            case 2:
                return in_array(
                    empty($itemId) ? $model_exists[$entityKey]['scopes'][$scope] : $permission->code,
                    CODE_PER_OPERATION::$Insert
                );
            case 4:
                return in_array(
                    empty($itemId) ? $model_exists[$entityKey]['scopes'][$scope] : $permission->code,
                    CODE_PER_OPERATION::$Update
                );
            case 8:
                return in_array(
                    empty($itemId) ? $model_exists[$entityKey]['scopes'][$scope] : $permission->code,
                    CODE_PER_OPERATION::$Delete
                );
            default:
                return false;
        }
    }

    public function camelToSnake($text) {
        return strtolower(preg_replace('/([a-z])([A-Z])/', '$1_$2', $text));
    }

    public function addEspecialScope($scope, $operation, $userId, $itemId, $modelName = null) {

        $model = $this->model->newInstance();
        $model_name = !empty($modelName)
            ? $modelName
            : substr(
                get_class($model),
                strrpos(get_class($model), '\\')+1, strlen(get_class($model)) - strrpos(get_class($model), '\\')
            );
        
            // Defina o namespace base dos modelos
        $baseNamespace = 'App\\Models\\';
        // Construa o nome completo da classe com o namespace
        $fullClassName = $baseNamespace . $model_name . 'Permission';
        $fkName = $this->camelToSnake($model_name) . "_id";

        // Verifique se a classe existe
        if (class_exists($fullClassName)) {
            // Crie uma nova instância do modelo
            $permissionModelo = $fullClassName::make();

            $permission = $permissionModelo->where([
                'user_allowed_id' => $userId,
                'scope' => $scope,
                $fkName => $itemId
            ])->first();
            
            // Se existe, atualiza o registro
            if (!empty($permission)) {

                switch ($operation) {
                    case 1:
                        if(!in_array($permission->code, CODE_PER_OPERATION::$Read)) {
                            // Se não existe a permissão, adiciona
                            $permission->code = $permission->code + $operation;
                            $permission->save();
                        }
                        break;
                    case 2:
                        if(!in_array($permission->code, CODE_PER_OPERATION::$Insert)) {
                            // Se não existe a permissão, adiciona
                            $permission->code = $permission->code + $operation;
                            $permission->save();
                        }
                        break;
                    case 4:
                        if(!in_array($permission->code, CODE_PER_OPERATION::$Update)) {
                            // Se não existe a permissão, adiciona
                            $permission->code = $permission->code + $operation;
                            $permission->save();
                        }
                        break;
                    case 8:
                        if(!in_array($permission->code, CODE_PER_OPERATION::$Delete)) {
                            // Se não existe a permissão, adiciona
                            $permission->code = $permission->code + $operation;
                            $permission->save();
                        }
                        break;
                    default:
                        return false;
                }

                return true;
            } else {
                // Se não existe, cria
                $permissionModelo->create([
                    'user_allowed_id' => $userId,
                    'scope' => $scope,
                    'code'=> $operation,
                    $fkName => $itemId,
                    'user_id' => auth()->user()->id
                ]);
                return true;
            }
            
        } else {
            // A classe do modelo não existe, retorne false
            return false;
        }
    }

    public function removeEspecialScope($scope, $operation, $userId, $itemId, $modelName = null) {

        $model = $this->model->newInstance();
        $model_name = !empty($modelName)
            ? $modelName
            : substr(
                get_class($model),
                strrpos(get_class($model), '\\')+1, strlen(get_class($model)) - strrpos(get_class($model), '\\')
            );
        
            // Defina o namespace base dos modelos
        $baseNamespace = 'App\\Models\\';
        // Construa o nome completo da classe com o namespace
        $fullClassName = $baseNamespace . $model_name . 'Permission';
        $fkName = $this->camelToSnake($model_name) . "_id";

        // Verifique se a classe existe
        if (class_exists($fullClassName)) {
            // Crie uma nova instância do modelo
            $permissionModelo = $fullClassName::make();

            $permission = $permissionModelo->where([
                'user_allowed_id' => $userId,
                'scope' => $scope,
                $fkName => $itemId,
            ])->first();
            
            if (!empty($permission)) {
                // Se igual, remove o registro
                if($permission->code == $operation) {
                    $permission->delete();
                } else if($permission->code > $operation) {
                    // Se diferente, sabendo que é maior, subtrai
                    $permission->code = $permission->code - $operation;
                    $permission->save();
                }
                return true;
            } else {
                return true;
            }
        } else {
            // A classe do modelo não existe, retorne false
            return false;
        }
    }
}