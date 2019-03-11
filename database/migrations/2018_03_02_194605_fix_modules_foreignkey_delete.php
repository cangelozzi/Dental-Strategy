<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class FixModulesForeignkeyDelete extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('modules', function (Blueprint $table) {
            $table->dropForeign(["quiz_id"]);
            $table->foreign('quiz_id')
                ->references('id')->on('quizzes')
                ->onDelete('cascade');
        });
        Schema::table("lessons", function(Blueprint $table) {
            $table->dropForeign(["module_id"]);
            $table->foreign("module_id")
                  ->references("id")->on("modules")
                  ->onDelete("cascade");
        });
        Schema::table("module_tag", function(Blueprint $table) {
            $table->dropForeign(["module_id"]);
            $table->foreign("module_id")
                  ->references("id")->on("modules")
                  ->onDelete("cascade");
            $table->dropForeign(["tag_id"]);
            $table->foreign("tag_id")
                  ->references("id")->on("tags")
                  ->onDelete("cascade");
        });
        Schema::table("module_track", function(Blueprint $table) {
            $table->dropForeign(["track_id"]);
            $table->foreign("track_id")
                  ->references("id")->on("tracks")
                  ->onDelete("cascade");
            $table->dropForeign(["module_id"]);
            $table->foreign("module_id")
                  ->references("id")->on("modules")
                  ->onDelete("cascade");
        });
        Schema::table("pages", function(Blueprint $table) {
            $table->dropForeign(["lesson_id"]);
            $table->foreign("lesson_id")
                  ->references("id")->on("lessons")
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
        Schema::table('modules', function (Blueprint $table) {
            //
        });
    }
}
