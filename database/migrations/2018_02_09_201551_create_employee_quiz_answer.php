<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeQuizAnswer extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_answer', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('employee_id')->unsigned();
            $table->integer('employee_quiz_id')->unsigned();
            $table->integer('answer_id')->unsigned();
            $table->timestamps();
        });

        Schema::table('employee_answer', function (Blueprint $table) {
            $table->foreign('employee_id')
                  ->references('id')->on('employees');
            $table->foreign('employee_quiz_id')
                  ->references('id')->on('employee_quiz');
            $table->foreign('answer_id')
                  ->references('id')->on('answers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee_answer');
    }
}
