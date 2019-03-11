<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLessonModuleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lesson_module', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('lesson_id')->unsigned();
            $table->integer('module_id')->unsigned();
            $table->timestamps();
        });

        // Bind foreign keys
        Schema::table('lesson_module', function (Blueprint $table) {
            $table->foreign('lesson_id')
                  ->references('id')->on('lessons');
            $table->foreign('module_id')
                  ->references('id')->on('modules');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('lesson_module');
    }
}
