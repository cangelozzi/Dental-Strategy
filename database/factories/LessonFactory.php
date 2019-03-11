<?php

use Faker\Generator as Faker;

$factory->define(App\Lesson::class, function (Faker $faker) {
    return [
        'title' => $faker->sentence(),
        'description' => $faker->text(),
        'quiz_id' => rand(1, 10),
        'module_id' => rand(1, 10)
    ];
});
