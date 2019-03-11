<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;

class SearchController extends Controller
{
    public function index($term) {
        $lessons = App\Lesson::search($term)->get();
        $modules = App\Module::search($term)->get();
        $pages   = App\Page::search($term)->get();

        return response([
            "message" => "Search was successful",
            "lessons" => $lessons,
            "modules" => $modules,
            "pages"   => $pages
        ]);
    }
}
