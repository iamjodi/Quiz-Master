<?php

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
    return view('login');
})->name('login');

Route::post('/login', 'AuthController@login');
Route::get('/logout', 'AuthController@logout');

Route::get('/question/index', 'QuestionController@index');
Route::post('/question/create', 'QuestionController@create');
Route::get('/question/{id}/edit', 'QuestionController@edit');
Route::post('/question/{id}/update', 'QuestionController@update');
Route::get('/question/{id}/delete', 'QuestionController@delete');
Route::post('/question/result', 'QuestionController@result');