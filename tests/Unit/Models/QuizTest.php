<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

use App;

class QuizTest extends TestCase
{
    /** @test */
    function it_should_have_questions() 
    {
        $quiz = (factory(App\Quiz::class, 1)->create())[0];
        (factory(App\Question::class, 1)->create([
            "quiz_id" => $quiz->id
        ]));
        $this->assertTrue(
            get_class(($quiz->questions()->get())[0]
        ) == App\Question::class);
    }

    /** @test */
    function it_should_questions_with_correct_answers () 
    {
        $quiz = (factory(App\Quiz::class, 1)->create())[0];
        $question = (factory(App\Question::class, 1)->create([
            "quiz_id" => $quiz->id
        ]))[0];
        (factory(App\Answer::class, 1)->create([
            "question_id" => $question->id,
            "is_correct" => true
        ]));
        $this->assertTrue(get_class((
            $question->answers()->where(["is_correct" => true])->get()
        )[0]) == App\Answer::class);
    }
}