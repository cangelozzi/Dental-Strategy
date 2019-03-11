<?php

use Faker\Generator as Faker;

$factory->define(Model::class, function (Faker $faker) {
    return [
        "track_id" => 1,
        "empoloyee_id" => 1
    ];
});
