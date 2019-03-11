<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;
use App\Lesson;
use App\Page;
use Symfony\Component\HttpFoundation\Response;

class LessonsController extends Controller
{
  public function index()
  {
    return response(Lesson::with('pages')->get(), Response::HTTP_OK);
  }

  public function show($id)
  {
    $lesson = App\Lesson::whereId($id)->with('pages')->get();
    return response($lesson);
  }

  public function showAllPages($lessonId)
  {
    $lesson = App\Lesson::whereId($lessonId)->with('pages')->get()[0];
    return response($lesson->pages);
  }

  public function addPages($lessonId, Request $request)
  {
    $page = new Page();
    $page->title = $request->title;
    $page->content = $request->content;
    $page->order = $request->order;
    $page->lesson_id = $request->lesson_id;
    $page->save();
    return response($page->jsonSerialize(), Response::HTTP_CREATED);
  }

}
