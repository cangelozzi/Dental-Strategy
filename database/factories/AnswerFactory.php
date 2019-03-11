<?php

use Faker\Generator as Faker;

$factory->define(App\Answer::class, function (Faker $faker) {
    return [
        'question_id' => 1,
        'is_correct' => rand(1,4) < 4 ? false : true ,// 75% set the value to false
        'content' => $faker->text()
    ];
});
