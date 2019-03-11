<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use Traits\FullTextSearch; // Make the Page searchable
    protected $searchable = [
        "content", "title"
    ];
    /**
     * get lesson
     */
    public function lesson()
    {
        return $this->belongsTo('App\Lesson');
    }
}
