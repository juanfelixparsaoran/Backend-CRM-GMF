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
Route::get('/customer/read','CustomerController@read');
Route::get('/customer/edit/{id}','CustomerController@edit');
Route::get('/customer/delete/{id}','CustomerController@delete');
Route::post('/customer/update','CustomerController@update');
Route::get('/ads/read','AdsController@read');
Route::get('/ads/edit/{id}','AdsController@edit');
Route::get('/ads/delete/{id}','AdsController@delete');
Route::post('/ads/update','AdsController@update');
