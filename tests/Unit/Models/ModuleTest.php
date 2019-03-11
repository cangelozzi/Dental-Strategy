<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

use App;

class ModuleTest extends TestCase
{
    // /** @test */
    // function it_belongs_to_a_track()
    // {
    //     $this->assertTrue(
    //         get_class((App\Module::find(1)->tracks()->get())[0]) == App\Track::class);
    // }

    // /** @test */
    // function it_has_employees_through_track()
    // {
    //     $track = (App\Module::find(1)->tracks()->get())[0];
    //     $employee = ($track::find(1)->employees()->get())[0];
    //     $this->assertTrue(get_class($employee) == App\Employee::class);
    // }

    // /** @test */
    // function it_has_tags()
    // {
    //     $tag = (App\Module::find(1)->tags()->get())[0];
    //     $this->assertTrue(get_class($tag) == App\Tag::class);
    // }

    // /** @test */
    // function it_has_lessons()
    // {
    //     $module = (factory(App\Module::class, 1)->create())[0];
    //     factory(App\Lesson::class, 1)->create([
    //         "module_id" => $module->id
    //     ]);
    //     $this->assertTrue(get_class((
    //         $module->lessons()->get()
    //     )[0]) == App\Lesson::class);
    //     // $lesson = (App\Module::find(1)->lessons()->get())[0];
    //     // $this->assertTrue(get_class($lesson) == App\Lesson::class);
    // }
}
