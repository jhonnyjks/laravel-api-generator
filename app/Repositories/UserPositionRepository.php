<?php

namespace App\Repositories;

use App\Models\UserPosition;
use App\Repositories\BaseRepository;

/**
 * Class UserPositionRepository
 * @package App\Repositories
 * @version January 27, 2022, 3:32 pm UTC
*/

class UserPositionRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'description'
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
        return UserPosition::class;
    }
}
