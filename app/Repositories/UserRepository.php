<?php

namespace App\Repositories;

use App\Models\User;
use App\Repositories\BaseRepository;

/**
 * Class UserRepository
 * @package App\Repositories
 * @version April 17, 2019, 2:37 pm UTC
 *
 * @method User find($id, $columns = ['*'])
 * @method User find($id, $columns = ['*'])
 * @method User first($columns = ['*'])
*/
class UserRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'user_type_id',
        'general_status_id',
        'login',
        'name',
        'password',
        'email',
        'email_verified_at',
        'last_access',
        'hiring_type_id',
        'education_level_id',
        'position',
        'document',
        'registration',
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return User::class;
    }

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    public function create(array $attributes)
    {
        if(!empty($attributes['password'])) $attributes['password'] = bcrypt($attributes['password']);
        if(!empty($attributes['celphone'])) $attributes['celphone'] = $this->processPhoneNumber($attributes['celphone']);

        $attributes['auth_type_id'] = 1;
        
        return parent::create($attributes);
    }

    public function update(array $attributes, $id)
    {
        if(!empty($attributes['password'])) $attributes['password'] = bcrypt($attributes['password']);
        if(!empty($attributes['celphone'])) $attributes['celphone'] = $this->processPhoneNumber($attributes['celphone']);
        
        return parent::update($attributes, $id);
    }

    private function processPhoneNumber(string $phoneNumber): string
    {
        if (strlen($phoneNumber) === 11) {
            $phoneNumber = substr($phoneNumber, 0, 2) . substr($phoneNumber, 3);
        }

        return $phoneNumber;
    }
}
