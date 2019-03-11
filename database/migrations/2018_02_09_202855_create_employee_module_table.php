<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeModuleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_module', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('module_id')->unsigned();
            $table->integer('employee_id')->unsigned();
            $table->decimal('amount_complete');
            $table->timestamps();
        });

        // FOREIGN KEY BINDINGS
        Schema::table('employee_module', function (Blueprint $table) {
            $table->foreign('module_id')
                    ->references('id')->on('modules');
            $table->foreign('employee_id')
                    ->references('id')->on('employees');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee_track');
    }
}
