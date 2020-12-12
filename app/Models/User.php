<?php

namespace App\Models;

use App\Models\BaseModel as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="User",
 *      required={""},
 *      @SWG\Property(
 *          property="login",
 *          description="login",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="name",
 *          description="name",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="password",
 *          description="password",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="email",
 *          description="email",
 *          type="string"
 *      )
 * )
 */
class User extends Model
{
    use SoftDeletes;

    public $table = 'users';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public $fillable = [
        'general_status_id',
        'login',
        'name',
        'password',
        'email',
        'email_verified_at',
        'last_access',
        'celphone'
    ];
 
     /**
      * The attributes that should be hidden for arrays.
      *
      * @var array
      */
     protected $hidden = [
         'password', 'remember_token', 'last_access'
     ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'login' => 'string',
        'name' => 'string',
        'password' => 'string',
        'email' => 'string',
        'general_status_id' => 'integer',
        'celphone' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'login' => 'required_without:email|between:3,20|unique:users,login,{id}',
        'email' => 'required_without:login|email|unique:users,email,{id}',
        'password' => 'required|string|between:6,15',
        'name' => 'required|string|between:6,150',  
        'general_status_id' => 'integer|exists:general_statuses,id',
        'celphone' => 'integer|between:10000000000,99999999999|unique:users,celphone,{id}'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function generalStatus()
    {
        return $this->belongsTo(\App\Models\GeneralStatus::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function userProfiles()
    {
        return $this->hasMany(\App\Models\UserProfile::class);
    }
}
