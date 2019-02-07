<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Profile
 * @package App\Models
 * @version February 7, 2019, 5:12 am UTC
 *
 * @property \Illuminate\Database\Eloquent\Collection AccessProfile
 * @property \Illuminate\Database\Eloquent\Collection activityTaxes
 * @property \Illuminate\Database\Eloquent\Collection beneficiaries
 * @property \Illuminate\Database\Eloquent\Collection buildCorrections
 * @property \Illuminate\Database\Eloquent\Collection owners
 * @property \Illuminate\Database\Eloquent\Collection personActivities
 * @property \Illuminate\Database\Eloquent\Collection ProfileCity
 * @property \Illuminate\Database\Eloquent\Collection personalDetails
 * @property \Illuminate\Database\Eloquent\Collection tributeCovenants
 * @property \Illuminate\Database\Eloquent\Collection serviceActivities
 * @property \Illuminate\Database\Eloquent\Collection accessProfileActions
 * @property \Illuminate\Database\Eloquent\Collection activityAddresses
 * @property \Illuminate\Database\Eloquent\Collection streetBlocks
 * @property \Illuminate\Database\Eloquent\Collection persons
 * @property \Illuminate\Database\Eloquent\Collection Permission
 * @property \Illuminate\Database\Eloquent\Collection streets
 * @property string noun
 * @property string description
 */
class Profile extends Model
{
    use SoftDeletes;

    public $table = 'profiles';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'noun',
        'description'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'noun' => 'string',
        'description' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function accessProfiles()
    {
        return $this->hasMany(\App\Models\AccessProfile::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function profileCities()
    {
        return $this->hasMany(\App\Models\ProfileCity::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function permissions()
    {
        return $this->hasMany(\App\Models\Permission::class);
    }
}
