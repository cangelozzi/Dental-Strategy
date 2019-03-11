<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    use Traits\FullTextSearch; // Make the Lessons searchable
    protected $searchable = ["title", "description"];
    /**
     * get quiz
     */
    public function quiz()
    {
        return $this->hasOne('App\Quiz');
    }

    /**
     * get module
     */
    public function module() {
        return $this->belongsTo('App\Module');
    }

    /**
     * get pages
     */
    public function pages()
    {
        return $this->hasMany('App\Page');
    }
}   



