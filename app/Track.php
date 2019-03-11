<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Track extends Model
{
    public $fillable = ["title", "description"];
    /**
     * Get all valid positions
     */
    public function positions() {
        return $this->belongsToMany('App\Position');
    }

    /**
     * get employees
     */
    public function employees() {
        return $this->belongsToMany('App\Employee');
    }

    /**
     * get tracks
     */
    public function modules()
    {
        return $this->belongsToMany('App\Module');
    }
}
