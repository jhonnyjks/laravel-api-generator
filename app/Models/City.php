<?php

namespace App\Models;

use App\Models\BaseModel as Model;

/**
 * @SWG\Definition(
 *      definition="City",
 *      required={""},
 *      @SWG\Property(
 *          property="id",
 *          description="Identificação única de cada registro.",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="name",
 *          description="Nome da cidade",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="state_id",
 *          description="Estado ao qual a cidade percence.",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="created_at",
 *          description="created_at",
 *          type="string",
 *          format="date-time"
 *      ),
 *      @SWG\Property(
 *          property="user_id",
 *          description="Usuário responsável pelo município",
 *          type="integer",
 *          format="int32"
 *      )
 * )
 */
class City extends Model
{
    public $table = 'cities';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    public $fillable = [
        'name',
        'state_id',
        'user_id',
        'city_status_id',
        'active_at',
        'inactive_at'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'state_id' => 'integer',
        'user_id' => 'integer',
        'city_status_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required',
        'state_id' => 'required',
        'city_status_id' => 'required'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function state()
    {
        return $this->belongsTo(\App\Models\State::class, 'state_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function cityStatus()
    {
        return $this->belongsTo(\App\Models\CityStatus::class, 'city_status_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function user()
    {
        return $this->belongsTo(\App\Models\User::class, 'user_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function cityUsers()
    {
        return $this->hasMany(\App\Models\CityUser::class, 'city_id');
    }
}
