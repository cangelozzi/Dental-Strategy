<?php

use Faker\Generator as Faker;

$factory->define(App\Quiz::class, function (Faker $faker) {
    return [
        'title' => $faker->sentence(),
        'mark_to_pass' => 0.8
    ];
});
