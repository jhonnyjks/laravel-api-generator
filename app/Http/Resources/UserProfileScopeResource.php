<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserProfileScopeResource extends JsonResource
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
            'user_profile_id' => $this->user_profile_id,
            'cpath' => $this->cpath,
            'scope' => $this->scope,
            'code' => $this->code,
            'update_at' => $this->update_at,
            'deleted_at' => $this->deleted_at,
            'created_at' => $this->created_at
        ];
    }
}
