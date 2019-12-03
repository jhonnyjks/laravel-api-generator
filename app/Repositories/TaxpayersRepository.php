<?php

namespace App\Repositories;

use App\Models\Taxpayers;
use App\Repositories\BaseRepository;

/**
 * Class TaxpayersRepository
 * @package App\Repositories
 * @version December 3, 2019, 9:51 pm UTC
*/

class TaxpayersRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'document',
        'taxpayer_type_id',
        'birthdate',
        'gender',
        'identity_number',
        'identity_state_id',
        'identity_agency',
        'identity_issue_date',
        'mother_name',
        'email',
        'telephone',
        'cell_phone',
        'fancy_name',
        'updated_at',
        'created_at',
        'deleted_at'
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
        return Taxpayers::class;
    }
}
