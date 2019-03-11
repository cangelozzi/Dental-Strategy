<?php

use Faker\Generator as Faker;

$factory->define(App\Question::class, function (Faker $faker) {
    return [
        'content' => $faker->text(),
        'quiz_id' => rand(1,10)
    ];
});
