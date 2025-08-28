<?php

namespace App\Repositories;

use App\Models\UserProfile;
use App\Repositories\BaseRepository;

/**
 * Class UserProfileRepository
 * @package App\Repositories
 * @version December 9, 2020, 3:17 pm UTC
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

    public function findByUserId($userId)
    {
        return $this->model->where('user_id', $userId)->first();
    } 
}
