<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class UserProfile
 * @package App\Models
 * @version February 7, 2019, 7:18 pm UTC
 *
 * @property \App\Models\User user
 * @property \App\Models\Profile profile
 * @property \Illuminate\Database\Eloquent\Collection buildCorrections
 * @property \Illuminate\Database\Eloquent\Collection personActivities
 * @property \Illuminate\Database\Eloquent\Collection personalDetails
 * @property \Illuminate\Database\Eloquent\Collection owners
 * @property \Illuminate\Database\Eloquent\Collection profileCities
 * @property \Illuminate\Database\Eloquent\Collection streets
 * @property \Illuminate\Database\Eloquent\Collection streetBlocks
 * @property \Illuminate\Database\Eloquent\Collection tributeCovenants
 * @property \Illuminate\Database\Eloquent\Collection serviceActivities
 * @property \Illuminate\Database\Eloquent\Collection UserProfileAction
 * @property \Illuminate\Database\Eloquent\Collection persons
 * @property \Illuminate\Database\Eloquent\Collection activityAddresses
 * @property \Illuminate\Database\Eloquent\Collection activityTaxes
 * @property \Illuminate\Database\Eloquent\Collection beneficiaries
 * @property \Illuminate\Database\Eloquent\Collection permissions
 * @property bigInteger user_id
 * @property bigInteger profile_id
 */
class UserProfile extends Model
{
    use SoftDeletes;

    public $table = 'user_profiles';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'user_id',
        'profile_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function user()
    {
        return $this->belongsTo(\App\Models\User::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function profile()
    {
        return $this->belongsTo(\App\Models\Profile::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function userProfileActions()
    {
        return $this->hasMany(\App\Models\UserProfileAction::class);
    }
}
