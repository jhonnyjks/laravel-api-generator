<?php

namespace App\Repositories;

use App\Models\UserProfile;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class UserProfileRepository
 * @package App\Repositories
 * @version December 10, 2020, 6:28 pm UTC
*/

class UserProfileRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'user_id',
        'profile_id'
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
        return UserProfile::class;
    }
}
