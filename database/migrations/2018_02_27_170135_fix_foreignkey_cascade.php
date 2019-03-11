<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class FixForeignkeyCascade extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::table('employees', function (Blueprint $table) {
      
        // });
        Schema::table('employee_lesson', function (Blueprint $table) {
            $table->dropForeign("employee_lesson_employee_id_foreign");
            $table->foreign("employee_id")
            ->references('id')->on('employees')
            ->onDelete('cascade');
        });
        Schema::table('employee_track', function (Blueprint $table) {
            $table->dropForeign(["track_id"]);
            $table->foreign('track_id')
                ->references('id')->on('tracks')
                ->onDelete('cascade');
            $table->dropForeign(["employee_id"]);
            $table->foreign('employee_id')
                ->references('id')->on('employees')
                ->onDelete('cascade');
            });
            Schema::table('employee_quiz', function (Blueprint $table) {
            $table->dropForeign(["employee_id"]);
            $table->foreign('employee_id')
                ->references('id')->on('employees')
                ->onDelete('cascade');
            $table->dropForeign(["quiz_id"]);
            $table->foreign('quiz_id')
                  ->references('id')->on('quizzes')
                  ->onDelete('cascade');
        });
        Schema::table('employee_answer', function (Blueprint $table) {
            $table->dropForeign(['employee_id']);
            $table->foreign('employee_id')
                ->references('id')->on('employees')
                ->onDelete('cascade');
            $table->dropForeign(['employee_quiz_id']);
            $table->foreign('employee_quiz_id')
                ->references('id')->on('employee_quiz')
                ->onDelete('cascade');
            $table->dropForeign(['answer_id']);
            $table->foreign('answer_id')
                ->references('id')->on('answers')
                ->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
