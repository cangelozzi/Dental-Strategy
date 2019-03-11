<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    /**
     * Get all Tracks
     */
    public function tracks() {
        return $this->belongsToMany('App\Track');
    }

    /**
     * get Employees
     */
    public function employees() {
        return $this->hasMany('App\Employee');
    }
}

