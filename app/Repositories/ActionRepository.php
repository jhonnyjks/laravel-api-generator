<?php

namespace App\Repositories;

use App\Models\Action;
use App\Repositories\BaseRepository;

/**
 * Class ActionRepository
 * @package App\Repositories
 * @version May 3, 2019, 2:14 pm UTC
 *
 * @method Action find($id, $columns = ['*'])
 * @method Action find($id, $columns = ['*'])
 * @method Action first($columns = ['*'])
*/
class ActionRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'permission_id',
        'noun',
        'code'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Action::class;
    }
}
