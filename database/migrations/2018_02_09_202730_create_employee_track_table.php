<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeTrackTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_track', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('track_id')->unsigned();
            $table->integer('employee_id')->unsigned();
            $table->decimal('amount_complete');
            $table->timestamps();
        });

        // FOREIGN KEY BINDINGS
        Schema::table('employee_track', function (Blueprint $table) {
            $table->foreign('track_id')
                    ->references('id')->on('tracks');
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
