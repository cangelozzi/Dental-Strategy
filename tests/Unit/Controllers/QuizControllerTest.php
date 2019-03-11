<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

use Faker\Generator as Faker;

use App;
use Illuminate\Validation\Factory;

class QuizControllerTest extends TestCase
{
    /** @test */
    public function can_fetch_all_quizzes()
    {
        $response = $this->get('api/quizzes');
        $this->assertEquals(200, $response->getStatusCode());
    }
    /** @test */
    public function can_fetch_a_quiz()
    {
        $quiz = factory(App\Quiz::class, 1)->create()[0];
        $response = $this->get("api/quizzes/$quiz->id");
        $this->assertEquals(200, $response->getStatusCode());
    }
    /** @test */
    public function can_create_a_quiz()
    {
        $quiz = (factory(App\Quiz::class, 1)->make())[0];

        $response = $this->call("POST", "api/quizzes", [
            'title' => $quiz->title,
            'mark_to_pass' => $quiz->mark_to_pass
        ]);
        $this->assertEquals(200, $response->getStatusCode());
    }
    /** @test */
    public function can_update_a_quiz()
    {
        $quiz = factory(App\Quiz::class, 1)->create()[0];
        $response = $this->call("PUT", "api/quizzes/$quiz->id");
        $this->assertEquals(200, $response->getStatusCode());
    }
    /** @test */
    public function can_delete_a_quiz()
    {
        $quiz = (factory(App\Quiz::class, 1)->create())[0];
        $response = $this->call("DELETE", "api/quizzes/$quiz->id");
        // var_dump($response);
        $this->assertEquals(200, $response->getStatusCode());
    }
}
