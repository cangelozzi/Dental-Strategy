<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Employee extends Model
{
    protected $fillable = ["first_name", "last_name", "company_id", "email", "password", "position_id", "date_hired"];
    /**
     * GET PARENT COMPANY
     */
    public function company() {
        return $this->belongsTo('App\Company');
    }

    /**
     * Get position
     */
    public function position() {
        return $this->belongsTo('App\Position');
    }

    /**
     * Get all Tracks
     */
    public function tracks() {
        return $this->belongsToMany('App\Track');
    }

    /**
     * Get all employee quizes
     */
    public function quizzes() {
        return $this->hasMany('App\EmployeeQuiz');
    }

    /**
     * get all employee lessons
     */
    public function lessons() {
        return $this->hasMany('App\EmployeeLesson');
    }
    
    /**
     * get models full name
     */
    public function fullName()
    {
        return $this["first_name"] . ""  . $this["last_name"];
    }
}
