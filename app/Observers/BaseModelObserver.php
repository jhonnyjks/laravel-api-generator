<?php

namespace App\Observers;

use App\Models\Audit;
use App\Models\BaseModel;
use Flow\Request;

class BaseModelObserver
{
    public function retrieved(BaseModel $baseModel)
    {
        
        Audit::salvar($baseModel,'readed');        
    }
    /**
     * Handle the base model "created" event.
     *
     * @param  \App\Models\BaseModel  $baseModel
     * @return void
     */
    public function created(BaseModel $baseModel)
    {
        $baseModel = $baseModel->makeHidden(['id','created_at','updated_at','deleted_at']);
        
        Audit::salvar($baseModel,'created',$baseModel);        
    }

    /**
     * Handle the base model "updated" event.
     *
     * @param  \App\BaseModel  $baseModel
     * @return void
     */
    public function updated(BaseModel $baseModel)
    {
        $alterados = $baseModel->getDirty();
        unset($alterados['updated_at']);
        unset($alterados['deleted_at']);
        $jsonAlterados = json_encode($alterados);

        Audit::salvar($baseModel,'updated',$alterados);
    }

    /**
     * Handle the base model "deleted" event.
     *
     * @param  \App\BaseModel  $baseModel
     * @return void
     */
    public function deleted(BaseModel $baseModel)
    {
        Audit::salvar($baseModel,'deleted');
    }

    /**
     * Handle the base model "restored" event.
     *
     * @param  \App\BaseModel  $baseModel
     * @return void
     */
    public function restored(BaseModel $baseModel)
    {
        Audit::salvar($baseModel,'restored',$baseModel);
    }

    /**
     * Handle the base model "force deleted" event.
     *
     * @param  \App\BaseModel  $baseModel
     * @return void
     */
    public function forceDeleted(BaseModel $baseModel)
    {
        Audit::salvar($baseModel,'forceDeleted');
    }
}
