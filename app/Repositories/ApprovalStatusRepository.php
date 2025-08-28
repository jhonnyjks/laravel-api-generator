<?php

namespace App\Repositories;

use App\Models\ApprovalStatus;
use App\Repositories\BaseRepository;

/**
 * Class ApprovalStatusRepository
 * @package App\Repositories
 * @version November 18, 2023, 1:33 pm -03
*/

class ApprovalStatusRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name'
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
        return ApprovalStatus::class;
    }
}
