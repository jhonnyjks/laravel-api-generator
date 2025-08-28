<?php

namespace App\Repositories;

use App\Models\City;
use App\Repositories\BaseRepository;

/**
 * Class CityRepository
 * @package App\Repositories
 * @version January 27, 2020, 4:56 pm UTC
*/

class CityRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'state_id',
        'user_id',
        'city_status_id'
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
        return City::class;
    }

    public function update($input, $id) {

        if(!empty($input['city_status_id'])) {
            switch($input['city_status_id']) {
                case 3:
                    $input['active_at'] = date('Y-m-d');
                break;

                case 4:
                case 5:
                    $input['inactive_at'] = date('Y-m-d');
                break;
            }
        }

        return parent::update($input, $id);
    }
}
