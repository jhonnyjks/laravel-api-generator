<?php

namespace App\Repositories;

use App\Models\EntityUser;
use App\Repositories\BaseRepository;

/**
 * Class EntityUserRepository
 * @package App\Repositories
 * @version May 25, 2022, 6:43 pm UTC
*/

class EntityUserRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'entity_id',
        'user_id',
        'profile_id'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return EntityUser::class;
    }
}
