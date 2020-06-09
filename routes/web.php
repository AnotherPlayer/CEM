<?php

use App\Http\Controllers\QuestionnaireController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Stripe\File;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/', 'HomeController@index')->name('home');

Route::get('/images/{path}/{attachment}', function ($path, $attachment) {
    $file = sprintf('storage/%s/%s', $path, $attachment);
    if (Storage::exists($file)) {
        return Image::make($file)->response();
    }
});

Route::group(['prefix' => 'courses'], function () {

    Route::group(['middleware' => ['auth']], function () {
        Route::get('/subscribed', 'CourseController@subscribed')
            ->name('courses.subscribed');
        Route::get('/{course}/inscribe', 'CourseController@inscribe')
            ->name('courses.inscribe');
        Route::post('/add_review', 'CourseController@addReview')
            ->name('courses.add_review');

        Route::group(['middleware' => [sprintf("role:%s", \App\Role::TEACHER)]],function (){
            Route::get('/create', 'CourseController@create')->name('courses.create');

            Route::post('/store', 'CourseController@store')->name('courses.store');
            Route::put('/{course}/update', 'CourseController@update')->name('courses.update');

            Route::get('/{slug}/edit','CourseController@edit')->name('courses.edit');
            Route::put('/{course}/update','CourseController@update')->name('courses.update');
            Route::delete('/{course}/destroy','CourseController@destroy')->name('courses.destroy');
        });
    });

    Route::get('/{course}', 'CourseController@show')->name('courses.detail');
});

Route::group(["prefix" => "subscriptions"], function () {
    Route::get('/plans', 'SubscriptionController@plans')
        ->name('subscriptions.plans');
    Route::post('/process_subscription', 'SubscriptionController@processSubscription')
        ->name('subscriptions.process_subscription');
});

Route::group(["prefix" => "profile", "middleware" => ["auth"]], function () {
    Route::get('/', 'ProfileController@index')->name('profile.index');
    Route::put('/', 'ProfileController@update')->name('profile.update');
});

Route::group(['prefix' => "solicitude"], function () {
    Route::post('/teacher', 'SolicitudeController@teacher')->name('solicitude.teacher');
});

Route::group(['prefix' => "teacher", "middleware" => ["auth"]], function () {
    Route::get('/courses', 'TeacherController@courses')->name('teacher.courses');
    Route::get('/students', 'TeacherController@students')->name('teacher.students');
    Route::post('/send_message_to_student', 'TeacherController@sendMessageToStudent')->name('teacher.send_message_to_student');

});

Route::group(['prefix' => "admin", "middleware" => ['auth', sprintf("role:%s", \App\Role::ADMIN)]], function() {
    Route::get('/courses', 'AdminController@courses')->name('admin.courses');
    Route::get('/courses_json', 'AdminController@coursesJson')->name('admin.courses_json');
    Route::post('/courses/updateStatus', 'AdminController@updateCourseStatus');


    Route::get('/teachers', 'AdminController@teachers')->name('admin.teachers');
    Route::get('/teachers_json', 'AdminController@teachersJson')->name('admin.teachers_json');
    Route::delete('/teachers/{teacher}', 'AdminController@destroy_teacher')->name('admin.destroy_teacher');

    Route::get('/students', 'AdminController@students')->name('admin.students');
    Route::delete('/students/{student}', 'AdminController@destroy_student')->name('admin.destroy_student');





});

Route::get('/questionnaires/create','QuestionnaireController@create');
Route::post('/questionnaires', 'QuestionnaireController@store');
Route::get('/questionnaires/{questionnaire}', 'QuestionnaireController@show');
Route::get('/questionnaires/{questionnaire}/questions/create', 'QuestionController@create');
Route::post('/questionnaires/{questionnaire}/questions', 'QuestionController@store');
Route::get('/cuestionario/{questionnaire}-{slug}', 'CuestionarioController@show');
