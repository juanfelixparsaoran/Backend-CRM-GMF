<?php

use Illuminate\Http\Request;

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


Route::post('/user/create','UserController@create');
Route::get('/user/createform','UserController@createForm');
Route::post('/user/update','UserController@update');

Route::post('/auth','LoginController@auth');
Route::get('/login','LoginController@login');
Route::get('/logout','LoginController@logout');

Route::get('/customer/read','CustomerController@read');
Route::get('/customer/edit/{id}','CustomerController@edit');
Route::get('/customer/delete/{id}','CustomerController@delete');
Route::post('/customer/update','CustomerController@update');

//customer route
Route::get('/customer/read','CustomerController@read');
Route::get('/customer/edit/{id}','CustomerController@edit');
Route::get('/customer/delete/{id}','CustomerController@delete');
Route::post('/customer/update','CustomerController@update');

//ads route
Route::get('/ads/read','AdsController@read');
Route::get('/ads/edit/{id}','AdsController@edit');
Route::get('/ads/delete/{id}','AdsController@delete');
Route::post('/ads/update','AdsController@update');

//birthday card route
Route::get('/birthday/read','BirthdayCardController@read');
Route::get('/birthday/edit/{id}','BirthdayCardController@edit');
Route::get('/birthday/delete/{id}','BirthdayCardController@delete');
Route::post('/birthday/update','BirthdayCardController@update');

//company route
Route::get('/company/read','CompanyController@read');
Route::get('/company/edit/{id}','CompanyController@edit');
Route::get('/company/delete/{id}','CompanyController@delete');
Route::post('/company/update','CompanyController@update');

//complaint route
Route::get('/complaint/read','ComplaintController@read');
Route::get('/complaint/edit/{id}','ComplaintController@edit');
Route::get('/complaint/delete/{id}','ComplaintController@delete');
Route::post('/complaint/update','ComplaintController@update');

//cp route
Route::get('/cp/read','CpController@read');
Route::get('/cp/edit/{id}','CpController@edit');
Route::get('/cp/delete/{id}','CpController@delete');
Route::post('/cp/update','CpController@update');

//newsletter route
Route::get('/newsletter/read','NewsletterController@read');
Route::get('/newsletter/edit/{id}','NewsletterController@edit');
Route::get('/newsletter/delete/{id}','NewsletterController@delete');
Route::post('/newsletter/update','NewsletterController@update');

//religion route
Route::get('/religion/read','ReligionCardController@read');
Route::get('/religion/edit/{id}','ReligionCardController@edit');
Route::get('/religion/delete/{id}','ReligionCardController@delete');
Route::post('/religion/update','ReligionCardController@update');

//service route
Route::get('/service/read','ServiceController@read');
Route::get('/service/edit/{id}','ServiceController@edit');
Route::get('/service/delete/{id}','ServiceController@delete');
Route::post('/service/update','ServiceController@update');
