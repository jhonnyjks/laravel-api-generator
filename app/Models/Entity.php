<?php

namespace App\Models;

use App\Models\BaseModel as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="Entity",
 *      required={""},
 *      @SWG\Property(
 *          property="id",
 *          description="ID única de cada registro",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="name",
 *          description="Nome",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="initials",
 *          description="Sigla",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="description",
 *          description="Descrição",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="entity_type_id",
 *          description="Tipo: secretaria, departamento...",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="entity_id",
 *          description="Entidade pai",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="general_status_id",
 *          description="Status",
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
 *          property="updated_at",
 *          description="updated_at",
 *          type="string",
 *          format="date-time"
 *      ),
 *      @SWG\Property(
 *          property="deleted_at",
 *          description="deleted_at",
 *          type="string",
 *          format="date-time"
 *      )
 * )
 */
class Entity extends Model
{
    use SoftDeletes;

    public $table = 'entities';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];



    public $fillable = [
        'name',
        'initials',
        'description',
        'entity_type_id',
        'entity_id',
        'general_status_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'initials' => 'string',
        'description' => 'string',
        'entity_type_id' => 'integer',
        'entity_id' => 'integer',
        'general_status_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required|max:120',
        'initials' => 'required|max:8',
        'description' => 'required|max:255',
        'entity_type_id' => 'required',
        'general_status_id' => 'required'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function entity()
    {
        return $this->belongsTo(\App\Models\Entity::class, 'entity_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function entityType()
    {
        return $this->belongsTo(\App\Models\EntityType::class, 'entity_type_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function generalStatus()
    {
        return $this->belongsTo(\App\Models\GeneralStatus::class, 'general_status_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function entityUsers()
    {
        return $this->hasMany(\App\Models\EntityUser::class, 'entity_id');
    }
}
