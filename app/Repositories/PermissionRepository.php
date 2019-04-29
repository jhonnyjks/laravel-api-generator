<?php

namespace App\Repositories;

use App\Models\Permission;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class PermissionRepository
 * @package App\Repositories
 * @version April 29, 2019, 5:23 pm UTC
 *
 * @method Permission findWithoutFail($id, $columns = ['*'])
 * @method Permission find($id, $columns = ['*'])
 * @method Permission first($columns = ['*'])
*/
class PermissionRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'profile_id',
        'permission_id',
        'priority',
        'cpath'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Permission::class;
    }
}
