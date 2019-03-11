<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeQuiz extends Model
{
    public $table = 'employee_quiz';   

    /**
     * get answers
     */
    public function answers()
    {
        return $this->hasMany('App\EmployeeAnswer');
    }
}
