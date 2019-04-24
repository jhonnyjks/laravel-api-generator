<?php

namespace App\Repositories;

use App\Models\Profile;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class ProfileRepository
 * @package App\Repositories
 * @version April 24, 2019, 6:07 pm UTC
 *
 * @method Profile findWithoutFail($id, $columns = ['*'])
 * @method Profile find($id, $columns = ['*'])
 * @method Profile first($columns = ['*'])
*/
class ProfileRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'noun',
        'description'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Profile::class;
    }
}
