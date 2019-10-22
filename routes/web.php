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
    return view('welcome');
});

Route::get('/tes','TestController@index');

Route::get('/pegawai','PegawaiController@index');
Route::post('/user/create','UserController@create');
Route::get('/user/createform','UserController@createForm');
Route::post('/auth','LoginController@auth');
Route::get('/login','LoginController@login');
Route::get('/logout','LoginController@logout');
