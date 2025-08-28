<?php

namespace App\Repositories;

use App\Models\Entity;
use App\Repositories\BaseRepository;

/**
 * Class EntityRepository
 * @package App\Repositories
 * @version May 25, 2022, 4:31 pm UTC
*/

class EntityRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'initials',
        'description',
        'entity_type_id',
        'entity_id',
        'general_status_id'
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
        return Entity::class;
    }
}
