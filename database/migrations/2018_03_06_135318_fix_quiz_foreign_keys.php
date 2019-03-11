<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class FixQuizForeignKeys extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('lessons', function (Blueprint $table) {
            $table->dropForeign(["quiz_id"]);
            $table->foreign("quiz_id")
                  ->references("id")->on("quizzes")
                  ->onDelete("cascade");
        });
        Schema::table('employee_lesson', function (Blueprint $table) {
            $table->dropForeign(["lesson_id"]);
            $table->foreign("lesson_id")
                  ->references("id")->on("lessons")
                  ->onDelete("cascade");
            $table->dropForeign(["employee_id"]);
            $table->foreign("employee_id")
                  ->references("id")->on("employees")
                  ->onDelete("cascade");
        });
        Schema::table("pages", function (Blueprint $table) {    
            $table->dropForeign(["lesson_id"]);
            $table->foreign("lesson_id")
                    ->references("id")->on("lessons")
                    ->onDelete("cascade");
        });
        Schema::table("employees", function (Blueprint $table) {
            $table->dropForeign(["position_id"]);
            $table->foreign("position_id")
                  ->references("id")->on("positions")
                  ->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('quizzes', function (Blueprint $table) {
            //
        });
    }
}
