<?php

namespace App\Models;

use App\Models\BaseModel as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="Action",
 *      required={""},
 *      @SWG\Property(
 *          property="noun",
 *          description="noun",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="code",
 *          description="code",
 *          type="integer",
 *          format="int32"
 *      )
 * )
 */
class Action extends Model
{
    use SoftDeletes;

    public $table = 'actions';

    public $metadata = [
        'title' => 'Ações'
    ];

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
        'noun' => 'string',
        'permission_id' => 'integer',
        'code' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'noun' => 'required|string',
        'permission_id' => 'required|numeric|exists:permissions,id',
        'code' => 'required|numeric'
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
    public function userProfileActions()
    {
        return $this->hasMany(\App\Models\UserProfileAction::class);
    }
}
