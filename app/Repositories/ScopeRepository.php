<?php

namespace App\Repositories;

use App\Models\Scope;
use App\Repositories\BaseRepository;

/**
 * Class ScopeRepository
 * @package App\Repositories
 * @version August 26, 2023, 2:58 pm -03
*/

class ScopeRepository extends BaseRepository
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
        return Scope::class;
    }
}
