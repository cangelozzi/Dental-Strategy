<?php

use Illuminate\Database\Seeder;
use Ramsey\Uuid\Codec\TimestampLastCombCodec;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
    //  * @return void
     */
    public function run()
    {
        factory(App\Company::class, 1)->create();
        factory(App\Position::class, 1)->create();
        factory(App\Track::class, 20)->create();
        factory(App\Employee::class, 50)->create();
        factory(App\Quiz::class, 10)->create();
        factory(App\Module::class, 10)->create();
        factory(App\Tag::class, 50)->create();
        factory(App\Lesson::class, 10)->create();
        factory(App\Question::class, 10)->create();

        # TEMPORARY 
        factory(App\EmployeeQuiz::class, 1)->create();
        factory(App\EmployeeLesson::class, 1)->create();

        //Create 4 answers for each question
        App\Question::all()->each(function($question) {
            factory(App\Answer::class, 4)->create([
                'question_id' => $question->id
            ]);
        });

        // Create 5 pages in order for each lesson
        App\Lesson::all()->each(function($lesson) {
            for($i = 0; $i <= 5; $i++) {
                factory(App\Page::class)->create([
                    'order' => $i, // Increment after assigning
                    'lesson_id' => $lesson->id
                 ]);
            }
        });

        # App\Track Associations
        $tracks = App\Track::all();
        App\Position::all()->each(function($position) use ($tracks) {
            $position->tracks()->attach(
                $tracks[0]->pluck('id')->toArray()
            );
        });
        App\Employee::all()->each(function($employee) use ($tracks) {
            $employee->tracks()->attach(
                $tracks->random(rand(1, 20))->pluck('id')->toArray()
            );
        });
        App\Module::all()->each(function($module) use($tracks) {
            $module->tracks()->attach(
                $tracks->random(rand(1, 20))->pluck('id')->toArray()
            );
        });

        # App\Tags Associations
        $tags = App\Tag::all();
        App\Module::all()->each(function($module) use ($tags) {
            $module->tags()->attach(
                $tags->random(rand(1,20))->pluck('id')->toArray()
            );
        });
    }
}
