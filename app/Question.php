<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    public $fillable = ["content", "quiz_id"];
    /**
     * get quiz
     */
    public function quiz()
    {
        return $this->belongsTo('App\Quiz');
    }

    /**
     * get answers
     */
    public function answers() {
        return $this->hasMany('App\Answer');
    }
}
