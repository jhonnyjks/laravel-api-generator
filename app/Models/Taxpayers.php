<?php

namespace App\Models;

use App\Models\BaseModel as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="Taxpayers",
 *      required={""},
 *      @SWG\Property(
 *          property="id",
 *          description="id",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="birthdate",
 *          description="birthdate",
 *          type="string",
 *          format="date"
 *      ),
 *      @SWG\Property(
 *          property="identity_issue_date",
 *          description="identity_issue_date",
 *          type="string",
 *          format="date"
 *      ),
 *      @SWG\Property(
 *          property="updated_at",
 *          description="updated_at",
 *          type="string",
 *          format="date-time"
 *      ),
 *      @SWG\Property(
 *          property="created_at",
 *          description="created_at",
 *          type="string",
 *          format="date-time"
 *      ),
 *      @SWG\Property(
 *          property="deleted_at",
 *          description="deleted_at",
 *          type="string",
 *          format="date-time"
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
 *      )
 * )
 */
class Taxpayers extends Model
{
    use SoftDeletes;

    public $table = 'taxpayers';
    

    protected $dates = ['deleted_at'];



    public $fillable = [
        'name',
        'document',
        'taxpayer_type_id',
        'birthdate',
        'gender',
        'identity_number',
        'identity_state_id',
        'identity_agency',
        'identity_issue_date',
        'mother_name',
        'email',
        'telephone',
        'cell_phone',
        'fancy_name',
        'updated_at',
        'created_at',
        'deleted_at'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'birthdate' => 'date',
        'identity_issue_date' => 'date'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    
}
