<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LessonsController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


# Company Routes
// Route::resource('/companies', 'CompanyController');
// # Employee Routes
// Route::resource('/employees', 'EmployeeController');
# Moudle Routes
Route::get('/modules/{moduleId}/lessons/{lessonId}', 'ModuleController@showLesson');
Route::delete('/modules/{moduleId}/lessons/{lessonId}', 'ModuleController@destroyLesson');
// Route::get('/modules/{moduleId}/lessons/{lessonId}/pages', 'ModuleController@showPages');
Route::get('/modules/{moduleId}/lessons/', 'ModuleController@showAllLessons');
Route::post('/modules/{moduleId}/lessons/', 'ModuleController@addLesson');
Route::resource('/modules', 'ModuleController');
# Lessons Routes
Route::resource('/lessons', 'LessonsController');
Route::get('/lessons/{lessonId}/pages', 'LessonsController@showAllPages');
Route::post('/lessons/{lessonId}/pages', 'LessonsController@addPages');
// Pages routes
Route::get('/pages', 'PagesController@index');
# Quiz Routes
// Route::resource('/quizzes', 'QuizController');
// # Track
// Route::resource('/tracks', 'TrackController');


# Search Routes
// Route::get('/search/{term}', 'SearchController@index');
