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
//Não mexer nesse grupo, a menos que queira alterar regras de autenticação
Route::group([
	'prefix' => 'auth'
], function () {
	Route::post('signup', 'AuthController@signup');
	Route::post('login', [
		'as' => 'api.auth.login',
		'uses' => 'AuthController@login'
	]);
	Route::get('validate', [
		'as' => 'api.auth.validate',
		'uses' => 'AuthController@validateToken'
	]);
	Route::get('logout', 'AuthController@logout');
	Route::get('user', 'AuthController@user');
	Route::get('define_profile/{id}', 'AuthController@defineProfile');
	
	Route::get('permissions/use-all', [
		'as' => 'api.permissions.useAll',
		'uses' => 'AuthController@setAllPermissions'
	]);
	
});

Route::get('permissions/all', [
	'as' => 'api.permissions.all',
	'uses' => 'AuthController@accessibleRoutes'
]);


Route::resource('users', 'UserAPIController');