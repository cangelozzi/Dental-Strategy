<?php

namespace App\Http\Controllers;
use App;
use App\Lesson;
use Illuminate\Http\Request;
use App\Module;
use Illuminate\Http\Response;

class ModuleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $modules = App\Module::with('lessons' /*'tracks', 'quiz'*/)->get(); // I honestly have no idea if we need tracks here
        return response($modules);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Module::create($request->all());
        // return response('Created', Response::HTTP_CREATED);

        $this -> validate(request(), [
          'title' => 'required',
          'description' => 'required'
        ]);
        
        $module = new Module();
        $module->title = $request->title;
        $module->description = $request->description;
        $module->quiz_id = $request->quiz_id;
          $module->save();
          return response($module->jsonSerialize(), Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $module = App\Module::whereId($id)->with('lessons', 'quiz')->get();
       return response($module);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     * 
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $module = App\Module::whereId($id)->with(["lessons", "quiz"])->get()[0];
        
        $description = $request->input('description');
        $title = $request->input('title');

        $module->description = $description ? $description : $module->description;
        $module->title = $title ? $title : $module->title;
        $module->save();

        return response([
            "message" => "Successfully updated {$module->title}",
            "module" => $module 
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $module = App\Module::find($id);
        $module->delete();

        return response([
           "message" => "sucessfullly deleted module $module->name" 
        ]);
    }

    
    public function showAllLessons($moduleId) 
    {
      $module = App\Module::whereId($moduleId)->with('lessons')->get()[0];
      return response($module->lessons);
    }

  public function addLesson($moduleId, Request $request)
  {


    $this->validate(request(), [
      'title' => 'required',
      'description' => 'required'
    ]);

    // $module = App\Module::whereId($moduleId)->with('lessons')->get()[0];
    $lesson = new Lesson();
    // echo $request -> data;
    // echo $lesson;
    $lesson->title = $request->title;
    $lesson->description = $request->description;
    $lesson->quiz_id = $request->quiz_id;
    $lesson->module_id = $request->module_id;
    $lesson->save();
    return response($lesson->jsonSerialize(), Response::HTTP_CREATED);
  }
    
    public function showLesson($moduleId, $lessonId) 
    {
       $lesson = App\Lesson::find($lessonId);
        return response($lesson);
    }

    public function destroyLesson($moduleId, $lessonId)
    {
      $lesson = App\Lesson::find($lessonId);
      $lesson->delete();

      return response([
        "message" => "sucessfullly deleted lesson $lesson->title"
      ]);
    }

    // public function showPages($moduleId, $lessonId) 
    // {
    //     $pages = App\Lesson::find($lessonId)->with('pages')->get();
    //     return response($pages);
    // }


}
