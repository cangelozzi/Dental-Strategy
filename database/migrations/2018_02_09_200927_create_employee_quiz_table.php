<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeQuizTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_quiz', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('employee_id')->unsigned();
            $table->integer('quiz_id')->unsigned();
            $table->boolean('passed');
            $table->timestamps();
        });

        Schema::table('employee_quiz', function (Blueprint $table) {
            $table->foreign('employee_id')
                  ->references('id')->on('employees');
            $table->foreign('quiz_id')
                  ->references('id')->on('quizzes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employee_quiz');
    }
}
