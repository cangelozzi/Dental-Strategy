<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    /**
     * get moudles
     */
    public function modules()
    {
        return $this->belongsToMany('App\Module');
    }
}
