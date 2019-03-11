<?php

use Faker\Generator as Faker;

$factory->define(App\Page::class, function (Faker $faker) {
    return [
        'title' => $faker->text(20),
        'content' => $faker->text(),
        'order' => 1, // This and lesson ID will be overridden by the seeds
        'lesson_id' => 1
    ];
});