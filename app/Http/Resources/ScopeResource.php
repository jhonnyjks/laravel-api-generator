<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ScopeResource extends JsonResource
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
            'permission_id' => $this->permission_id,
            'noun' => $this->noun,
            'code' => $this->code,
            'updated_at' => $this->updated_at,
            'deleted_at' => $this->deleted_at,
            'created_at' => $this->created_at
        ];
    }
}
