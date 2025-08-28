<?php

namespace App\Repositories;

use App\Models\MeasureUnit;
use App\Repositories\BaseRepository;

/**
 * Class MeasureUnitRepository
 * @package App\Repositories
 * @version January 27, 2022, 11:09 pm UTC
*/

class MeasureUnitRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'initials'
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
        return MeasureUnit::class;
    }
}
