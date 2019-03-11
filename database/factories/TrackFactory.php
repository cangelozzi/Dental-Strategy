<?php

use Faker\Generator as Faker;

$factory->define(App\Track::class, function (Faker $faker) {
    return [
        'title' => $faker->sentence(),
        'description' => $faker->text() 
    ];
});
