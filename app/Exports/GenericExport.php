<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;

class GenericExport implements FromCollection
{
    protected $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Retorna os dados para o Excel.
     */
    public function collection()
    {
        return collect($this->data);
    }
}