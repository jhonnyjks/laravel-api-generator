<?php

namespace App\Criteria;

use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

class WithTrashedCriteria implements CriteriaInterface
{

    /**
     * @var \Illuminate\Http\Request
     */
    protected $request;

    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    public function apply($model, RepositoryInterface $repository)
    {        
        return $model->when($this->request->withTrashed,function($query) {
            $query->withTrashed();
                switch($this->request->withTrashedType) {
                    case 1:
                        return $query->withTrashed();
                    break;
                    case 2:
                        return $query->onlyTrashed();
                    break;
                    default:
                        return $query->withTrashed();
               }
        });
    }
}