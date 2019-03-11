<?php

namespace App\Http\Controllers;

use App;
use Illuminate\Http\Request;

class QuizController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $quizzes = App\Quiz::with("questions", "questions.answers")->get();
        return response([
            "message" => "sucessfully retrieved quizzes",
            "quizzes" => $quizzes
        ]);
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
        $questions = $request->input("questions");
        $quiz = App\Quiz::create([
            "title" => $request->input("title"),
            "mark_to_pass" => $request->input("mark_to_pass")
        ]);
        foreach ($questions as $question) {
            $answers = $question["answers"];
            $questionMod = App\Question::create([
                "content" => $question["content"],
                "quiz_id" => $quiz->id
            ]);
            foreach ($answers as $index => $answer) {
                $answerMod = App\Answer::create([
                    "is_correct" => $answer["is_correct"],
                    "content" => $answer["content"],
                    "question_id" => $questionMod->id
                ]);
            }
        }

        return response([
            "message" => "Successfully created quiz",
            "quiz" => App\Quiz::whereId($quiz->id)->with("questions", "questions.answers")->get()[0]
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $quiz = App\Quiz::whereId($id)->with("questions", "questions.answers")->get()[0];
        return response([
            "message" => "Sucessfully Retrieved quiz: $quiz->title",
            "quiz" => $quiz
        ]);
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
        $quiz = App\Quiz::find($id);
        
        $title = $request->input("title");
        $mark_to_pass = $request->input("mark_to_pass");

        $quiz->title = $title ? $title : $quiz->title;
        $quiz->mark_to_pass = $mark_to_pass ? $mark_to_pass : $quiz->mark_to_pass;
        $quiz->save();

        return response([
            "message" => "Sucessfully updated quiz: $quiz->title",
            "quiz" => $quiz
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
        $quiz = App\Quiz::find($id);
        $quiz->delete();
        return response([      
            "message" => "Sucessfully deleted $quiz->title"
        ]);
    }
}
