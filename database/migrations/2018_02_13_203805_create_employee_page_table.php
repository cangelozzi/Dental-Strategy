<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeePageTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_page', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('employee_id')->unsigned();
            $table->integer('employee_lesson_id')->unsigned();
            $table->boolean('complete');
            $table->timestamps();
        });

        Schema::table('employee_page', function(Blueprint $table) {
            $table->foreign('employee_id')
                  ->references('id')->on('employees');
            $table->foreign('employee_lesson_id')
                  ->references('id')->on('employee_lesson');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee_page');
    }
}
