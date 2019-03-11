<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSearchIndexs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Add search index to the pages table
        // DB::statement("ALTER TABLE pages ADD FULLTEXT fulltext_index (content, title)");
        // Add search index to the lessons table
        DB::statement("ALTER TABLE lessons ADD FULLTEXT fulltext_index (title, description)");
        // Add search index to the modules table
        DB::statement("ALTER TABLE modules ADD FULLTEXT fulltext_index (title)");
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
