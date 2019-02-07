<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{   
    use HasApiTokens, Notifiable;

    protected $table = 'accesses';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'login', 'email', 'password', 'type_access_id', 'status_access_id', 'person_id', 
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function getProfileId() {
        // session(['profile['..']'])
    } 

    public function setProfile($profileId, $accessToken)
    {

        $sessionPath = 'session['.$profileId.']['.$this->id.']';
        
        session([
            $sessionPath.'accessToken' => $accessToken,
            $sessionPath.'permissions' => 
        ]);
    }
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function accessProfiles()
    {
        return $this->hasMany(\App\Models\AccessProfile::class);
    }
}
