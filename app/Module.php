<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Module extends Model
{
    use Traits\FullTextSearch; // Make the module searchable
    protected $searchable = ["title"];
    protected $guarded = [];
    /**
     * get tracks
     */
    public function tracks() {
        return $this->belongsToMany('App\Track');
    }

    /**
     * get lessons
     */
    public function lessons() {
        return $this->hasMany('App\Lesson');
    }
    /**
     * get tags
     */
    public function tags() {
        return $this->belongsToMany('App\Tag');
    }
    /**
     * get exam
     */
    public function quiz() {
        return $this->hasOne('App\Quiz', 'id', 'quiz_id');
    }
}
