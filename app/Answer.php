<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    public $fillable = ["is_correct", "content", "question_id"];
    /** 
     * Get question
     */
    public function questions()
    {
        return $this->belongsTo('App\Question');
    }
}
