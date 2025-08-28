<?php

namespace App\Repositories;

use App\Models\Audit;
use App\Repositories\BaseRepository;

/**
 * Class AuditRepository
 * @package App\Repositories
 * @version August 23, 2024, 2:46 pm -03
*/

class AuditRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'event',
        'user_id',
        'item_type',
        'item_id',
        'data',
        'ipv4',
        'ipv6',
        'mac'
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
        return Audit::class;
    }
}
