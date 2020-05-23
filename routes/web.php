<?php

use Illuminate\Support\Facades\Route;
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

Route::group(['prefix'=>'courses'],function (){
    Route::get('/{course}','CourseController@show')->name('courses.detail');
});

Route::group(["prefix" => "subscriptions"], function() {
    Route::get('/plans', 'SubscriptionController@plans')
        ->name('subscriptions.plans');
    Route::post('/process_subscription', 'SubscriptionController@processSubscription')
        ->name('subscriptions.process_subscription');
});

Route::get('/images/{path}/{attachment}', function ($path, $attachment) {
    $file = sprintf('storage/%s/%s', $path, $attachment);
    if(File::exists($file)){
        return Image::make($file)->response();
    }
});

