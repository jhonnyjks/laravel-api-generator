<?php

namespace App\Repositories;

use App\Models\UserProfileScope;
use App\Repositories\BaseRepository;

/**
 * Class UserProfileScopeRepository
 * @package App\Repositories
 * @version August 26, 2023, 3:01 pm -03
*/

class UserProfileScopeRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'user_profile_id',
        'cpath',
        'scope',
        'code',
        'update_at'
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
        return UserProfileScope::class;
    }
}
