<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployeeLesson extends Model
{
    public $table = 'employee_lesson';

    /**
     * get employee
     */
    public function employee()
    {
        return $this->belongsTo('App\Employee');
    }

    /**
     * get pages
     */
    public function pages() {
        return $this->hasMany('App\EmployeePage');
    }
}
