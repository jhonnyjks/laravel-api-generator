<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class AuditResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'event' => $this->event,
            'user_id' => $this->user_id,
            'item_type' => $this->item_type,
            'item_id' => $this->item_id,
            'data' => $this->data,
            'ipv4' => $this->ipv4,
            'ipv6' => $this->ipv6,
            'mac' => $this->mac,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at
        ];
    }
}
