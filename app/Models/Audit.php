<?php

namespace App\Models;

use App\Models\BaseModel as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="Audit",
 *      required={"event", "user_id", "item_type", "item_id"},
 *      @SWG\Property(
 *          property="id",
 *          description="ID única de cada registro",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="event",
 *          description="Evento/ação/operação",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="user_id",
 *          description="Autor",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="item_type",
 *          description="Model/Entidade/Classe/Tipo",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="item_id",
 *          description="ID do item",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="data",
 *          description="Dados relacionados à ação",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="ipv4",
 *          description="IP V4",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="ipv6",
 *          description="IP V6",
 *          type="string"
 *      ),
 *      @SWG\Property(
 *          property="mac",
 *          description="Endereço MAC",
 *          type="string"
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
class Audit extends Model
{

    public $table = 'audits';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    // protected $dates = ['deleted_at'];



    public $fillable = [
        'event',
        'user_id',
        'item_type',
        'item_id',
        'data',
        'ipv4',
        'ipv6',
        'mac'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'event' => 'string',
        'user_id' => 'integer',
        'item_type' => 'string',
        'item_id' => 'integer',
        'data' => 'json',
        'ipv4' => 'string',
        'ipv6' => 'string',
        'mac' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'event' => 'required|string|max:32',
        'user_id' => 'required',
        'item_type' => 'required|string|max:48',
        'item_id' => 'required',
        'data' => 'nullable|string',
        'ipv4' => 'nullable|string|max:16',
        'ipv6' => 'nullable|string|max:48',
        'mac' => 'nullable|string|max:24'
    ];

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }

    public static function salvar($baseModel,$event,$data=null,$user_id=null){
        $ip = self::getIp();
        if(!$baseModel || $baseModel == null) return;
        self::create([
            'event' => $event,
            'user_id' => $user_id?:auth()->id(),
            'item_type' => get_class($baseModel),
            'item_id' => $baseModel->id,
            'data' => $data,
            'ipv4' => $ip['ipv4'],
            'ipv6' => $ip['ipv6'],
            'mac' => null
        ]);
    }

    private static function getIp(){
        $request = request();
        $ipv4 = null;
        $ipv6 = null;

        // Obtenha o IP do cabeçalho X-Forwarded-For, se disponível
        $forwardedFor = $request->header('X-Forwarded-For');

        if ($forwardedFor) {
            // X-Forwarded-For pode conter uma lista de IPs separados por vírgula
            $ips = explode(',', $forwardedFor);

            foreach ($ips as $ip) {
                $ip = trim($ip);
                if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4)) {
                    $ipv4 = $ip;
                } elseif (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV6)) {
                    $ipv6 = $ip;
                }
            }
        }

        // Se não foi possível capturar pelo X-Forwarded-For, use REMOTE_ADDR
        if (!$ipv4 && !$ipv6) {
            $clientIp = $request->server('REMOTE_ADDR');

            if (filter_var($clientIp, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4)) {
                $ipv4 = $clientIp;
            } elseif (filter_var($clientIp, FILTER_VALIDATE_IP, FILTER_FLAG_IPV6)) {
                $ipv6 = $clientIp;
            }
        }

        return [
            'ipv4' => $ipv4,
            'ipv6' => $ipv6,
        ];
    }
}
