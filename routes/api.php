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

Route::group([
	'prefix' => 'auth'
], function () {

	Route::post('signup', 'AuthController@signup');

	// Route::group([
	// 	'middleware' => 'auth:api'
	// ], function() {
		Route::post('login', [
			'as' => 'api.auth.login',
			'uses' => 'AuthController@login'
		]);
		Route::get('logout', 'AuthController@logout');
		Route::get('user', 'AuthController@user');
		Route::get('define_profile/{id}', 'AuthController@defineProfile');
	// });
});


Route::resource('persons', 'PersonAPIController');
