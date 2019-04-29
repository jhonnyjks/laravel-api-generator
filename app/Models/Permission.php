<?php

namespace App\Models;

use App\Models\BaseModel as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="Permission",
 *      required={""},
 *      @SWG\Property(
 *          property="priority",
 *          description="priority",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="cpath",
 *          description="cpath",
 *          type="string"
 *      )
 * )
 */
class Permission extends Model
{
    use SoftDeletes;

    public $table = 'permissions';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'profile_id',
        'permission_id',
        'priority',
        'cpath'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'cpath' => 'string',
        'profile_id' => 'integer',
        'permission_id' => 'integer',
        'priority' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'cpath' => 'required|string',
        'profile_id' => 'required|integer|exists:profiles,id',
        'permission_id' => 'integer|exists:permissions,id',
        'priority' => 'required|integer|between:0,200'
    ];

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
    public function actions()
    {
        return $this->hasMany(\App\Models\Action::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function permission()
    {
        return $this->belongsTo(\App\Models\Permission::class);
    }
}
