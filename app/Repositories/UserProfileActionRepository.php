<?php

namespace App\Repositories;

use App\Models\UserProfileAction;
use App\Repositories\BaseRepository;

/**
 * Class UserProfileActionRepository
 * @package App\Repositories
 * @version September 28, 2023, 5:52 pm -03
*/

class UserProfileActionRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'user_profile_id',
        'cpath',
        'action',
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
        return UserProfileAction::class;
    }
}
