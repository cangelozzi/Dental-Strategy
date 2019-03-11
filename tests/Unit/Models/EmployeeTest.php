<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

use App;
use Illuminate\Validation\Factory;

class EmployeeTest extends TestCase
{
    /** @test */
    function belongs_to_a_company () 
    {
        $employee = (factory(App\Employee::class, 1)->create())[0];
        $this->assertTrue(
            get_class(($employee->company()->get())[0]) == App\Company::class);
        $employee->delete();
    }

    /** @test */
    function it_has_a_position()
    {
        $employee = (factory(App\Employee::class, 1)->create())[0];
        $this->assertTrue(
            get_class(($employee->position()->get())[0])  == App\Position::class);
        $employee->delete();
    }

    /** @test */
    function it_has_tracks() 
    {
        $employee = (factory(App\Employee::class, 1)->create())[0];
        $employeePosition = ($employee->position()->get())[0];
        $this->assertTrue(
            get_class(($employeePosition->tracks()->get())[0]) == App\Track::class);
        $employee->delete();
    }

    ## AT THE MOMENT THESE TESTS DON'T REALLY DO ANYTHING
    ## MOST LIKELY THE WILL NEED TO BE BETTER IMPLEMNTED
    // /** @test */
    // function it_has_quizzes()
    // {
    //     $employee = (factory(App\Employee::class, 1)->create())[0];
    //     $this->assertTrue(
    //         get_class(($employee->quizzes()->get())[0]) == App\Track::class);
    //     $employee->delete();
    //     // $employeeQuizzes = App\Employee::find(1)
    //     //                     ->quizzes()
    //     //                     ->get();
    //     // $this->assertTrue(get_class($employeeQuizzes[0]) == App\EmployeeQuiz::class);
    // }

    // /** @test */
    // function it_has_lessons()
    // {
    //     $lessons = App\Employee::find(1)
    //                 ->lessons()
    //                 ->get();
    //     $this->assertTrue(get_class($lessons[0]) == App\EmployeeLesson::class);
    // }
 }
