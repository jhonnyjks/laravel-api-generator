<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class Person
 * @package App\Models
 * @version February 7, 2019, 2:09 am UTC
 *
 * @property \App\Models\StatusPerson statusPerson
 * @property \App\Models\TypePerson typePerson
 * @property \Illuminate\Database\Eloquent\Collection accessProfiles
 * @property \Illuminate\Database\Eloquent\Collection activityTaxes
 * @property \Illuminate\Database\Eloquent\Collection Address
 * @property \Illuminate\Database\Eloquent\Collection Beneficiary
 * @property \Illuminate\Database\Eloquent\Collection Company
 * @property \Illuminate\Database\Eloquent\Collection buildCorrections
 * @property \Illuminate\Database\Eloquent\Collection Invoice
 * @property \Illuminate\Database\Eloquent\Collection Invoice
 * @property \Illuminate\Database\Eloquent\Collection Invoice
 * @property \Illuminate\Database\Eloquent\Collection Owner
 * @property \Illuminate\Database\Eloquent\Collection PersonActivity
 * @property \Illuminate\Database\Eloquent\Collection profileCities
 * @property \Illuminate\Database\Eloquent\Collection PersonalDetail
 * @property \Illuminate\Database\Eloquent\Collection Qsa
 * @property \Illuminate\Database\Eloquent\Collection tributeCovenants
 * @property \Illuminate\Database\Eloquent\Collection Ticket
 * @property \Illuminate\Database\Eloquent\Collection Ticket
 * @property \Illuminate\Database\Eloquent\Collection serviceActivities
 * @property \Illuminate\Database\Eloquent\Collection accessProfileActions
 * @property \Illuminate\Database\Eloquent\Collection activityAddresses
 * @property \Illuminate\Database\Eloquent\Collection streetBlocks
 * @property \Illuminate\Database\Eloquent\Collection permissions
 * @property \Illuminate\Database\Eloquent\Collection Covenant
 * @property \Illuminate\Database\Eloquent\Collection Covenant
 * @property \Illuminate\Database\Eloquent\Collection streets
 * @property \Illuminate\Database\Eloquent\Collection Access
 * @property bigInteger type_person_id
 * @property bigInteger status_person_id
 * @property bigInteger dip
 * @property string real_name
 * @property string acronym
 */
class Person extends Model
{
    use SoftDeletes;

    public $table = 'persons';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'type_person_id',
        'status_person_id',
        'dip',
        'real_name',
        'acronym'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'real_name' => 'string',
        'acronym' => 'string'
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
    public function statusPerson()
    {
        return $this->belongsTo(\App\Models\StatusPerson::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function personType()
    {
        return $this->belongsTo(\App\Models\TypePerson::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function addresses()
    {
        return $this->hasMany(\App\Models\Address::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function beneficiaries()
    {
        return $this->hasMany(\App\Models\Beneficiary::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function companies()
    {
        return $this->hasMany(\App\Models\Company::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function invoices()
    {
        return $this->hasMany(\App\Models\Invoice::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function owners()
    {
        return $this->hasMany(\App\Models\Owner::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function personActivities()
    {
        return $this->hasMany(\App\Models\PersonActivity::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function personalDetails()
    {
        return $this->hasMany(\App\Models\PersonalDetail::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function qsas()
    {
        return $this->hasMany(\App\Models\Qsa::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function tickets()
    {
        return $this->hasMany(\App\Models\Ticket::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function covenants()
    {
        return $this->hasMany(\App\Models\Covenant::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function users()
    {
        return $this->hasMany(\App\Models\User::class);
    }
}
