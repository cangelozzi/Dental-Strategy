<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Page;

class PagesController extends Controller
{
  public function index()
  {
    return response(Page::all()->jsonSerialize(), Response::HTTP_OK);
  }
}
