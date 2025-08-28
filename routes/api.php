<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Query\JoinClause;
use App\Models\Process;
use App\Models\Document;
use App\MyLibs\Utils;
// use App\Http\Controllers\API\VerificationAPIController;

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

/* Passport routes
use Laravel\Passport\Http\Routes\AccessTokenRoutes;
use Laravel\Passport\Http\Routes\AuthorizationRoutes;
use Laravel\Passport\Http\Routes\ClientRoutes;
use Laravel\Passport\Http\Routes\PersonalAccessTokenRoutes;
use Laravel\Passport\Http\Routes\TransientTokenRoutes;

(new AccessTokenRoutes)->register($router);
(new AuthorizationRoutes)->register($router);
(new ClientRoutes)->register($router);
(new PersonalAccessTokenRoutes)->register($router);
(new TransientTokenRoutes)->register($router); */
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

	Route::post('change-user-data', [
		'as' => 'api.auth.changeUserData',
		'uses' => 'AuthAPIController@changeUserData'
	]);

	Route::get('validate', [
		'as' => 'api.auth.validate',
		'uses' => 'AuthAPIController@validateToken'
	]);

	Route::get('logout', [
		'as' => 'api.auth.login',
		'uses' => 'AuthAPIController@logout']
	);
	Route::get('user', 'AuthAPIController@user');
	Route::get('define_profile/{id}', 'AuthAPIController@defineProfile');

	Route::post('verified-email', 'AuthAPIController@verifiedEmail');
	
});

// Nova rota de migração de usuários
//Route::get('migrate-users', [MigrationController::class, 'migrateUsers']);

//Route::get('migrate-users', 'MigrationController@migrateUsers');
Route::post('start-migration', 'MigrationController@startMigration');
Route::get('migration-status/{migrationId}', 'MigrationController@getMigrationStatus');
Route::get('migration-status', 'MigrationStatusController@getMigrationStatus');



Route::get('permissions/all', [
	'as' => 'api.permissions.all',
	'uses' => 'AuthAPIController@accessibleRoutes'
]);

Route::get('notifications', 'NotificationAPIController@index');



Route::resource('users', 'UserAPIController');

Route::resource('profiles', 'ProfileAPIController');

Route::resource('permissions', 'PermissionAPIController');

Route::resource('actions', 'ActionAPIController');


Route::resource('general_statuses', 'GeneralStatusAPIController');

Route::resource('user_profiles', 'UserProfileAPIController');

Route::resource('bidding_forms', 'BiddingFormAPIController');

Route::resource('bidding_regimes', 'BiddingRegimeAPIController');

Route::resource('bidding_execution_modes', 'BiddingExecutionModeAPIController');

Route::resource('bidding_modalities', 'BiddingModalityAPIController');



Route::resource('secretariats', 'SecretariatAPIController');

Route::resource('process_statuses', 'ProcessStatusAPIController');

Route::resource('processes', 'ProcessAPIController');
Route::post('/processes/answer/{biddingId}', 'ProcessAPIController@answer');
Route::post('/processes/answer/{biddingId}/attendant/{userId}', 'ProcessAPIController@defineAttendant');
Route::post('/processes/cancel/{biddingId}', 'ProcessAPIController@cancelService');



Route::resource('cities', 'CityAPIController');

Route::resource('city_users', 'CityUserAPIController');

Route::resource('city_statuses', 'CityStatusAPIController');

Route::resource('documents', 'DocumentAPIController');

Route::resource('doc_templates', 'DocTemplateAPIController');

Route::resource('user_positions', 'UserPositionAPIController');

Route::resource('measure_units', 'MeasureUnitAPIController');

Route::resource('entity_types', 'EntityTypeAPIController');

Route::resource('entities', 'EntityAPIController');

Route::resource('entity_users', 'EntityUserAPIController');

Route::resource('directories', 'DirectoryAPIController');

Route::resource('directory_users', 'DirectoryUserAPIController');

Route::resource('directory_entities', 'DirectoryEntityAPIController');

Route::resource('files', 'SFileAPIController');

Route::resource('file_entities', 'FileEntityAPIController');

Route::resource('file_users', 'FileUserAPIController');

Route::resource('signatures', 'SignatureAPIController');

Route::resource('signature_statuses', 'SignatureStatusAPIController');

Route::resource('signature_statuses', 'SignatureStatusAPIController');

Route::resource('user_attending_bidding', 'UserAttendingBiddingAPIController');

Route::resource('scopes', 'ScopeAPIController');

Route::resource('user_profile_scopes', 'UserProfileScopeAPIController');



Route::resource('user_profile_actions', 'UserProfileActionAPIController');

Route::resource('process_permissions', 'ProcessPermissionAPIController');





Route::resource('forms', 'FormAPIController');

Route::resource('form_sections', 'FormSectionAPIController');

Route::resource('form_completeds', 'FormCompletedAPIController');


Route::resource('form_questions', 'FormQuestionAPIController');

Route::resource('approval_statuses', 'ApprovalStatusAPIController');

Route::resource('question_types', 'QuestionTypeAPIController');


Route::resource('question_options', 'QuestionOptionAPIController');

Route::resource('question_answers', 'QuestionAnswerAPIController');

Route::resource('question_display_rules', 'QuestionDisplayRuleAPIController');

Route::resource('document_permissions', 'DocumentPermissionAPIController');

Route::resource('process_types', 'ProcessTypeAPIController');

Route::resource('email_templates', 'EmailTemplateAPIController');

Route::resource('audits', 'AuditAPIController');

Route::get('/cors-test', function () {
    return response()->json(['ok' => true]);
});