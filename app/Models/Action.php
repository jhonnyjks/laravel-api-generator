<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Action
 * @package App\Models
 * @version February 7, 2019, 5:11 am UTC
 *
 * @property \App\Models\Permission permission
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
 * @property \Illuminate\Database\Eloquent\Collection AccessProfileAction
 * @property \Illuminate\Database\Eloquent\Collection activityAddresses
 * @property \Illuminate\Database\Eloquent\Collection streetBlocks
 * @property \Illuminate\Database\Eloquent\Collection persons
 * @property \Illuminate\Database\Eloquent\Collection permissions
 * @property \Illuminate\Database\Eloquent\Collection streets
 * @property bigInteger permission_id
 * @property string noun
 * @property smallInteger code
 */
class Action extends Model
{
    use SoftDeletes;

    public $table = 'actions';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'permission_id',
        'noun',
        'code'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'noun' => 'string'
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
    public function permission()
    {
        return $this->belongsTo(\App\Models\Permission::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function accessProfileActions()
    {
        return $this->hasMany(\App\Models\AccessProfileAction::class);
    }
}
