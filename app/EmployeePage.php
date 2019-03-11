<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeePage extends Model
{
    public $table = 'employee_page';

    /**
     * get pagent lesson
     */
    public function lesson() {
        return $this->belongsTo('App\EmployeeLesson');
    }
}
