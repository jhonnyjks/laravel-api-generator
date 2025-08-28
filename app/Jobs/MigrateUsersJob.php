<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class MigrateUsersJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $migrationId;
    protected $legacyUsers;

    public function __construct($migrationId, $legacyUsers)
    {
        $this->migrationId = $migrationId;
        $this->legacyUsers = $legacyUsers;
    }

    public function handle()
    {
        $legacyEmails = DB::connection('legacy')->table('glpi_useremails')->get();
        $count = 0;

        foreach ($this->legacyUsers as $legacyUser) {
            $existingMapping = DB::table('user_migration_map')->where('old_user_id', $legacyUser->id)->first();
            if ($existingMapping) {
                continue;
            }

            $email = $legacyEmails->where('users_id', $legacyUser->id)
                                  ->where('is_default', 1)
                                  ->first()->email ?? null;

            $newUserId = DB::connection('mysql')->table('users')->insertGetId([
                'name' => $legacyUser->firstname . ' ' . $legacyUser->realname,
                'login' => $legacyUser->name,
                'password' => Hash::make($legacyUser->password),
                'document' => substr(preg_replace('/[^0-9]/', '', (is_null($legacyUser->cpf_cnpj) || empty($legacyUser->cpf_cnpj) ? '99999999999' : $legacyUser->cpf_cnpj)), -11),
                'email' => $email,
                'celphone' => substr(preg_replace('/[^0-9]/', '', $legacyUser->mobile), -11),
                'registration' => $legacyUser->registration_number,
                'general_status_id' => ($legacyUser->is_active == 1) ? 1 : 2,
                'auth_type_id' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            DB::table('user_migration_map')->insert([
                'old_user_id' => $legacyUser->id,
                'new_user_id' => $newUserId,
            ]);

            $count++;

            if ($count % 20 == 0) {
                \Log::info("Processados $count usuários até agora.");
                sleep(1); // Para não sobrecarregar
            }

            DB::table('migration_status')
              ->where('id', $this->migrationId)
              ->increment('imported_records');
        }

        DB::table('migration_status')->where('id', $this->migrationId)->update([
            'status' => 'completed',
            'completed_at' => now(),
        ]);
    }
}
