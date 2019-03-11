<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
  public $fillable = ["mark_to_pass", "title"];
  /**
   * Get questions
   */
  public function questions()
  {
    return $this->hasMany('App\Question');
  }

  /**
   * Get questions
   */
  public function employees() {
    return $this->belongsToMany('App\Employee');
  }


}
