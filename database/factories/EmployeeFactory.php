<?php

use Faker\Generator as Faker;

$factory->define(App\Employee::class, function (Faker $faker) {
    return [
        'first_name' => $faker->name(),
        'last_name' => $faker->name(),
        'email' => $faker->email(),
        'date_hired' => $faker->date(),
        'password' => $faker->password(),
        'company_id' => 1,
        'position_id' => 1
    ];
});
