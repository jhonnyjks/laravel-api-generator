<?php

namespace App\Repositories;

use App\Models\CityStatus;
use App\Repositories\BaseRepository;

/**
 * Class CityStatusRepository
 * @package App\Repositories
 * @version March 4, 2020, 2:43 pm UTC
*/

class CityStatusRepository extends BaseRepository
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
        return CityStatus::class;
    }
}
