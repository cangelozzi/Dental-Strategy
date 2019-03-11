<?php

use Faker\Generator as Faker;

$factory->define(App\EmployeeLesson::class, function (Faker $faker) {
    return [
        'lesson_id' => 1,
        'employee_id' => 1,
        'amount_complete' => 0.8
    ];
});
