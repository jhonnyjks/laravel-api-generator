<?php

use App\Models\Action;
use Illuminate\Database\Seeder;

class ActionsSFileSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $action = new Action([
            'permission_id'=>116,
            'noun'=>'s_files',
            'code'=>7
        ]);

        $action->save();
    }
}
