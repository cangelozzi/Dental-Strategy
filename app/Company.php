<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    public $fillable = ["logo", "name"];
    /**
     * Get Employees
     */
    public function employees() {
        return $this->hasMany('App\Employee');
    }

    /**
     * Company GET request info
     */
    public function getInfo() {
        return [
            "message" => "See company",
            "method" => "GET", 
            "url" => "api/companies/$this->id"
        ];
    }

    /**
     * Company get request info and self
     */
    public function withInfo() {    
        return [
            "data" => $this, "request" => $this->getInfo()
        ];
    }
}
