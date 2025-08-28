<?php

use App\Models\Action;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $action = new Action([
            'permission_id'=>116,
            'noun'=>'s_files',
            'code'=>7
        ]);

        $action->save();
    }
}
