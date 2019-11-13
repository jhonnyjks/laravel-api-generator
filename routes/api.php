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
	Route::post('signup', 'AuthAPIController@signup');
	
	Route::post('login', [
		'as' => 'api.auth.login',
		'uses' => 'AuthAPIController@login'
	]);

	Route::post('change-password', [
		'as' => 'api.auth.changePassword',
		'uses' => 'AuthAPIController@changePassword'
	]);

	Route::get('validate', [
		'as' => 'api.auth.validate',
		'uses' => 'AuthAPIController@validateToken'
	]);

	Route::get('logout', 'AuthAPIController@logout');
	Route::get('user', 'AuthAPIController@user');
	Route::get('define_profile/{id}', 'AuthAPIController@defineProfile');
	
	Route::get('permissions/use-all', [
		'as' => 'api.permissions.useAll',
		'uses' => 'AuthAPIController@setAllPermissions'
	]);
	
});

Route::get('permissions/all', [
	'as' => 'api.permissions.all',
	'uses' => 'AuthAPIController@accessibleRoutes'
]);


Route::resource('users', 'UserAPIController');

Route::resource('profiles', 'ProfileAPIController');

Route::resource('permissions', 'PermissionAPIController');
