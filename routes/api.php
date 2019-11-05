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
Route::get('/user/edit/{id}','UserController@edit');
Route::get('/user/read','UserController@read');
Route::get('/user/delete','UserController@delete');


Route::post('/auth','LoginController@auth');
Route::get('/login','LoginController@login');
Route::get('/logout','LoginController@logout');

Route::get('/customer/read','UserCustomerController@read');
Route::get('/customer/edit/{id}','UserCustomerController@edit');
Route::get('/customer/delete/{id}','UserCustomerController@delete');
Route::post('/customer/update','UserCustomerController@update');

//ads route
Route::get('/ads/read','AdsController@read');
Route::get('/ads/read/{id}','AdsController@getAdsInCompany');
Route::get('/ads/edit/{id}','AdsController@edit');
Route::get('/ads/delete/{id}','AdsController@delete');
Route::post('/ads/update','AdsController@update');
Route::post('/ads/create','AdsController@create');

//birthday card route
Route::get('/birthday/read','BirthdayCardController@read');
Route::get('/birthday/edit/{id}','BirthdayCardController@edit');
Route::get('/birthday/delete/{id}','BirthdayCardController@delete');
Route::post('/birthday/update','BirthdayCardController@update');

//company route
Route::get('/company/read','CompanyController@read');
Route::get('/company/read/{id}','CompanyController@readUserInCompany');
Route::get('/company/edit/{id}','CompanyController@edit');
Route::get('/company/delete/{id}','CompanyController@delete');
Route::post('/company/update','CompanyController@update');
Route::post('/company/create','CompanyController@create');


//complaint route
Route::get('/complaint/read','ComplaintController@read');
Route::get('/complaint/read/{id}','ComplaintController@readByCompany');
Route::get('/complaint/edit/{id}','ComplaintController@edit');
Route::get('/complaint/delete/{id}','ComplaintController@delete');
Route::post('/complaint/update','ComplaintController@update');
Route::post('/complaint/create','ComplaintController@create');

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
Route::post('/newsletter/create','NewsletterController@create');

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

//feedback project route
Route::get('/feedbackproject/read','FeedbackProjectController@read');
Route::get('/feedbackproject/read/{id}','FeedbackProjectController@readByCompany');
Route::get('/feedbackproject/edit/{id}','FeedbackProjectController@edit');
Route::post('/feedbackproject/update','FeedbackProjectController@update');
Route::get('/feedbackproject/delete/{id}','FeedbackProjectController@delete');
Route::post('/feedbackproject/create','FeedbackProjectController@create');

//company ads route
Route::get('/companyads/add/{ads_id}/{company_id}','CompanyAdsController@add');
Route::get('/companyads/remove/{ads_id}/{company_id}','CompanyAdsController@remove');

//project route
Route::get('/project/read','ProjectController@read');
Route::get('/project/read/{id}','ProjectController@readByCompany');
Route::get('/project/edit/{id}','ProjectController@edit');
Route::post('/project/update','ProjectController@update');
Route::get('/project/delete/{id}','ProjectController@delete');
Route::post('/project/create','ProjectController@create');





