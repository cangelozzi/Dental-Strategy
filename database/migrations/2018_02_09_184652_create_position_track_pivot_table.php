<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Console\Scheduling\Schedule;

class CreatePositionTrackPivotTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('position_track', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('position_id')->unsigned();
            $table->integer('track_id')->unsigned();
            $table->timestamps();
        });
    
        // Bing foreign keys on pivot table
        Schema::table('position_track', function (Blueprint $table) {
            $table->foreign('position_id')
                  ->references('id')->on('positions');
            $table->foreign('track_id')
                  ->references('id')->on('tracks');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('position_track');
    }
}
