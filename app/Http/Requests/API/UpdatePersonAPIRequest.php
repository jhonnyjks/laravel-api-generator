<?php

namespace App\Http\Requests\API;

use App\Models\Person;
use InfyOm\Generator\Request\APIRequest;

class UpdatePersonAPIRequest extends APIRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $rules = Person::$rules;

        $rules['real_name'] = str_replace('required|', '', $rules['real_name']);

        return $rules;
    }
}
