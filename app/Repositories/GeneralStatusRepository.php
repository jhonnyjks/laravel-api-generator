<?php

namespace App\Repositories;

use App\Models\GeneralStatus;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class GeneralStatusRepository
 * @package App\Repositories
 * @version December 10, 2020, 6:27 pm UTC
*/

class GeneralStatusRepository extends BaseRepository
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
        return GeneralStatus::class;
    }
}
