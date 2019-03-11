<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class BindForeignKeysFromCompanyEmployeePosition extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('companies', function (Blueprint $table) {
            $table->foreign('admin_id')
                  ->references('id')->on('employees');
        });

        Schema::table('employees', function (Blueprint $table) {
            $table->foreign('company_id')
                  ->references('id')->on('companies');
            $table->foreign('position_id')
                  ->references('id')->on('positions');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('company', function (Blueprint $table) {
            //
        });
    }
}
