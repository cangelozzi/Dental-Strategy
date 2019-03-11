<?php

use Faker\Generator as Faker;

$factory->define(App\EmployeeQuiz::class, function (Faker $faker) {
    return [
        'employee_id' => 4,
        'quiz_id' => 1,
        'passed' => true
    ];
});
