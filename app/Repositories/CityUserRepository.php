<?php

namespace App\Repositories;

use App\Models\CityUser;
use App\Repositories\BaseRepository;

/**
 * Class CityUserRepository
 * @package App\Repositories
 * @version February 11, 2020, 6:13 pm UTC
*/

class CityUserRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'city_id',
        'user_id'
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
        return CityUser::class;
    }
}
