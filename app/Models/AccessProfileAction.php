<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class AccessProfileAction
 * @package App\Models
 * @version February 7, 2019, 5:13 am UTC
 *
 * @property \App\Models\AccessProfile accessProfile
 * @property \App\Models\Action action
 * @property \Illuminate\Database\Eloquent\Collection accessProfiles
 * @property \Illuminate\Database\Eloquent\Collection activityTaxes
 * @property \Illuminate\Database\Eloquent\Collection beneficiaries
 * @property \Illuminate\Database\Eloquent\Collection buildCorrections
 * @property \Illuminate\Database\Eloquent\Collection owners
 * @property \Illuminate\Database\Eloquent\Collection personActivities
 * @property \Illuminate\Database\Eloquent\Collection profileCities
 * @property \Illuminate\Database\Eloquent\Collection personalDetails
 * @property \Illuminate\Database\Eloquent\Collection tributeCovenants
 * @property \Illuminate\Database\Eloquent\Collection serviceActivities
 * @property \Illuminate\Database\Eloquent\Collection activityAddresses
 * @property \Illuminate\Database\Eloquent\Collection streetBlocks
 * @property \Illuminate\Database\Eloquent\Collection persons
 * @property \Illuminate\Database\Eloquent\Collection permissions
 * @property \Illuminate\Database\Eloquent\Collection streets
 * @property bigInteger action_id
 * @property bigInteger access_profile_id
 * @property string|\Carbon\Carbon update_at
 */
class AccessProfileAction extends Model
{
    use SoftDeletes;

    public $table = 'access_profile_actions';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'action_id',
        'access_profile_id',
        'update_at'
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
    public function accessProfile()
    {
        return $this->belongsTo(\App\Models\AccessProfile::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function action()
    {
        return $this->belongsTo(\App\Models\Action::class);
    }
}
