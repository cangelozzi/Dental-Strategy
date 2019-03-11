<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Console\Scheduling\Schedule;

class CreateEmployeeLessonTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_lesson', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('lesson_id')->unsigned();
            $table->integer('employee_id')->unsigned();
            $table->decimal('amount_complete');
            $table->timestamps();
        });

        // FOREIGN KEY BINDINGS
        Schema::table('employee_lesson', function (Blueprint $table) {
            $table->foreign('lesson_id')
                  ->references('id')->on('lessons');
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
        Schema::dropIfExists('employee_lesson');
    }
}
