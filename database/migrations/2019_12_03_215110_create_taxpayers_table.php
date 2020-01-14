<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateTaxpayersTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('taxpayers', function (Blueprint $table) {
            $table->increments('id');
            $table->varchar(200)('name');
            $table->varchar(15)('document');
            $table->int('taxpayer_type_id');
            $table->date('birthdate');
            $table->int('gender');
            $table->varchar(15)('identity_number');
            $table->int('identity_state_id');
            $table->varchar(15)('identity_agency');
            $table->date('identity_issue_date');
            $table->varchar(150)('mother_name');
            $table->varchar(200)('email');
            $table->varchar(14)('telephone');
            $table->varchar(14)('cell_phone');
            $table->varchar(90)('fancy_name');
            $table->datetime('deleted_at');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('taxpayers');
    }
}
