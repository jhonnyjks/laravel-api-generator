<?php

namespace App\Repositories;

use App\Models\User;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class UserRepository
 * @package App\Repositories
 * @version April 17, 2019, 2:37 pm UTC
 *
 * @method User findWithoutFail($id, $columns = ['*'])
 * @method User find($id, $columns = ['*'])
 * @method User first($columns = ['*'])
*/
class UserRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'general_status_id',
        'login',
        'name',
        'password',
        'email',
        'email_verified_at',
        'last_access'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return User::class;
    }

    public function create(array $attributes)
    {
        if(!empty($attributes['password'])) $attributes['password'] = bcrypt($attributes['password']);
        
        return parent::create($attributes);
    }

    public function update(array $attributes, $id)
    {
        if(!empty($attributes['password'])) $attributes['password'] = bcrypt($attributes['password']);
        
        return parent::update($attributes, $id);
    }
}
