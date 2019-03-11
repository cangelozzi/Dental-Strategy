<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeAnswer extends Model
{
   public $table = 'employee_answer';
    /**
     * get employeeQuiz
     */
    public function quiz()
    {
        return $this->belongsTo('App\EmployeeQuiz');
    }
}
