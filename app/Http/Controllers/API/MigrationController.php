<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\AppBaseController;

class MigrationController extends AppBaseController
{   

    public function startMigration(Request $request)
    {
        $type = $request->input('type');

        if (!in_array($type, ['users', 'profiles', 'entities', 'processes', 'dispatch', 'files', 'full', 'logs','signatures'])) {
            return response()->json(['error' => 'Tipo de migração não suportado.'], 400);
        }

        // Verificar se já existe uma migração em andamento
        $existingMigration = DB::table('migration_status')
                                ->where('status', 'in_progress')
                                ->where('table_name', $type)
                                ->first();

        if ($existingMigration) {
            return response()->json(['error' => 'Já existe uma migração em andamento para este tipo.'], 409);
        }

        // if ($type == 'signatures') {

        //     $migratedSignatureIds = DB::table('signature_migration_map')->pluck('old_signature_id')->toArray();
        //     $legacySignatures = DB::connection('legacy')->table('glpi_ticketvalidations')
        //                         ->whereNotIn('id', $migratedSignatureIds)
        //                         ->get();
        //     $totalRecords = $legacySignatures->count();
        
        //     $migrationId = DB::table('migration_status')->insertGetId([
        //         'table_name' => $type,
        //         'total_records' => $totalRecords,
        //         'imported_records' => 0,
        //         'status' => 'in_progress',
        //         'started_at' => now(),
        //         'created_at' => now(),
        //         'updated_at' => now(),
        //     ]);
        
        //     $this->migrateSignatures($migrationId, $legacySignatures);
        //     return response()->json(['message' => 'Migração de assinaturas iniciada.', 'migrationId' => $migrationId]);
        // }

        if ($type == 'logs') {
            $migratedLogIds = DB::table('audit_migration_map')->pluck('old_log_id')->toArray();
            $legacyLogs = DB::connection('legacy')->table('glpi_logs')
                            ->whereNotIn('id', $migratedLogIds)
                            ->get();
            $totalRecords = $legacyLogs->count();
            $migrationId = DB::table('migration_status')->insertGetId([
                'table_name' => $type,
                'total_records' => $totalRecords,
                'imported_records' => 0,
                'status' => 'in_progress',
                'started_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        
            $this->migrateLogs($migrationId, $legacyLogs);
        
            return response()->json(['message' => 'Migração de logs iniciada.', 'migrationId' => $migrationId]);
        }
        

        if ($type == 'signatures') {
            // Coletar IDs de assinaturas já migradas
            $migratedSignatureIds = DB::table('signature_migration_map')->pluck('old_signature_id')->toArray();
            
            // Coletar assinaturas pendentes de migração da nova tabela `glpi_tickettaskvalidations`
            $legacySignatures = DB::connection('legacy')->table('glpi_tickettaskvalidations')
                                ->whereNotIn('id', $migratedSignatureIds)
                                ->get();
        
            $totalRecords = $legacySignatures->count();
        
            // Registrar status da migração de assinaturas
            $migrationId = DB::table('migration_status')->insertGetId([
                'table_name' => $type,
                'total_records' => $totalRecords,
                'imported_records' => 0,
                'status' => 'in_progress',
                'started_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        
            // Iniciar a migração das assinaturas
            $this->migrateSignatures($migrationId, $legacySignatures);
            
            return response()->json(['message' => 'Migração de assinaturas iniciada.', 'migrationId' => $migrationId]);
        }
        
        



        if ($type == 'files') {
            //$legacyFiles = DB::connection('legacy')->table('glpi_documents')->get();
            $migratedFileIds = DB::table('file_migration_map')->pluck('old_file_id')->toArray();
            $legacyFiles = DB::connection('legacy')->table('glpi_documents')
                            ->whereNotIn('id', $migratedFileIds)
                            ->get();




            $totalRecords = $legacyFiles->count();
            $migrationId = DB::table('migration_status')->insertGetId([
                'table_name' => 'files',
                'total_records' => $totalRecords,
                'imported_records' => 0,
                'status' => 'in_progress',
                'started_at' => now(),
            ]);
    
            $this->migrateFiles($migrationId, $legacyFiles);
            return response()->json(['message' => 'Migração de Arquivos Finalizada.', 'migrationId' => $migrationId]);
        }



        if ($type == 'dispatch') {
            //$legacyTasks = DB::connection('legacy')->table('glpi_tickettasks')->get();
            $migratedTickettaskIds = DB::table('tickettasks_migration_map')->pluck('old_tickettask_id')->toArray();

            // fluxo normal - comentado pra testes com ids especificos 
            // $legacyTasks = DB::connection('legacy')->table('glpi_tickettasks')
            //                 ->whereNotIn('id', $migratedTickettaskIds)
            //                 ->get();


            // Defina os IDs específicos para o teste
            $testIds = [161, 137, 173, 175, 177, 179, 193, 203, 205];

            $legacyTasks = DB::connection('legacy')->table('glpi_tickettasks')
                            ->whereNotIn('id', $migratedTickettaskIds)
                            ->whereIn('id', $testIds)  // Filtra apenas os IDs específicos
                            ->get();


            $totalRecords = $legacyTasks->count();
    
            $migrationId = DB::table('migration_status')->insertGetId([
                'table_name' => $type,
                'total_records' => $totalRecords,
                'imported_records' => 0,
                'status' => 'in_progress',
                'started_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
    
            $this->migrateTickettasks($migrationId, $legacyTasks);
            return response()->json(['message' => 'Migração de despachos iniciada.', 'migrationId' => $migrationId]);
        }

        if ($type == 'processes') {
            $migratedProcessIds = DB::table('process_migration_map')->pluck('old_process_id')->toArray();
            $legacyProcesses = DB::connection('legacy')->table('glpi_tickets')
                                ->whereNotIn('id', $migratedProcessIds)
                                ->get();
            $totalRecords = $legacyProcesses->count();
            $migrationId = DB::table('migration_status')->insertGetId([
                'table_name' => $type,
                'total_records' => $totalRecords,
                'imported_records' => 0,
                'status' => 'in_progress',
                'started_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
    
            // Iniciar a migração de processos
            $this->migrateProcesses($migrationId, $legacyProcesses);
    
            return response()->json(['message' => 'Migração de processos iniciada.', 'migrationId' => $migrationId]);
        }

        if ($type == 'entities') {
            $migratedEntityIds = DB::table('entity_migration_map')->pluck('old_entity_id')->toArray();
            $legacyEntities = DB::connection('legacy')->table('glpi_entities')
                        ->whereNotIn('id', $migratedEntityIds)
                        ->get();


            $migrationId = DB::table('migration_status')->insertGetId([
                'table_name' => $type,
                'total_records' => $totalRecords,
                'imported_records' => 0,
                'status' => 'in_progress',
                'started_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Iniciar a migração de entidades
            $this->migrateEntities($migrationId, $legacyEntities);

            return response()->json(['message' => 'Migração Executada com Sucesso!', 'migrationId' => $migrationId]);
        }

        // Se o tipo for "profiles", registrar o status e iniciar a migração de perfis
        if ($type == 'profiles') {
            // Obter todos os IDs de usuários que já foram migrados e têm perfis no sistema legado
            // $migratedUserIds = DB::table('user_migration_map')->pluck('old_user_id')->toArray();
            // $legacyProfiles = DB::connection('legacy')->table('glpi_profiles_users')
            //                 ->whereIn('users_id', $migratedUserIds) // Filtrar apenas usuários já migrados
            //                 ->get();

            $migratedProfileIds = DB::table('user_profiles')->pluck('user_id')->toArray();
            $migratedUserIds = DB::table('user_migration_map')->pluck('old_user_id')->toArray();
            $legacyProfiles = DB::connection('legacy')->table('glpi_profiles_users')
                                ->whereIn('users_id', $migratedUserIds)
                                ->whereNotIn('users_id', $migratedProfileIds)
                                ->get();
                                    

            // Registrar o total de perfis que serão migrados na tabela migration_status
            $totalRecords = $legacyProfiles->count();
            $migrationId = DB::table('migration_status')->insertGetId([
                'table_name' => $type,
                'total_records' => $totalRecords,
                'imported_records' => 0,
                'status' => 'in_progress',
                'started_at' => now(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            // Iniciar a migração de perfis
            $this->migrateProfiles($migrationId, $legacyProfiles);

            return response()->json(['message' => 'Migração de perfis iniciada.', 'migrationId' => $migrationId]);
        }

        // Código existente para migração de usuários
        $migratedUserIds = DB::table('user_migration_map')->pluck('old_user_id')->toArray();
        $legacyUsers = DB::connection('legacy')->table('glpi_users')
                        ->whereNotIn('id', $migratedUserIds) // Excluir usuários já migrados
                        ->get();

        $totalRecords = $legacyUsers->count();
        $migrationId = DB::table('migration_status')->insertGetId([
            'table_name' => $type,
            'total_records' => $totalRecords,
            'imported_records' => 0,
            'status' => 'in_progress',
            'started_at' => now(),
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        $this->migrateUsers($migrationId, $legacyUsers);

        return response()->json(['migrationId' => $migrationId]);
    }



private function migrateSignatures($migrationId, $legacyValidations)
{
    \Log::info("Iniciando migração de assinaturas (glpi_tickettaskvalidations) com ID de migração: $migrationId");

    $count = 0;

    foreach ($legacyValidations as $legacyValidation) {
        try {
            // Verificar se a assinatura já foi migrada para evitar duplicações
            $existingMapping = DB::table('signature_migration_map')->where('old_signature_id', $legacyValidation->id)->first();
            if ($existingMapping) {
                \Log::info("Assinatura já migrada: " . $legacyValidation->id);
                continue;
            }

            // Mapeamento do usuário solicitante
            $newUserId = DB::table('user_migration_map')
                            ->where('old_user_id', $legacyValidation->users_id)
                            ->value('new_user_id');

            // Mapeamento do usuário aprovador
            $newUserApprovalId = DB::table('user_migration_map')
                                    ->where('old_user_id', $legacyValidation->users_id_validate)
                                    ->value('new_user_id');

            if (!$newUserId || !$newUserApprovalId) {
                \Log::warning("Usuário(s) migrado(s) não encontrado(s) para a assinatura ID: " . $legacyValidation->id);
                continue;
            }

            //  // Buscar mapeamento de entidade
            //  $newEntityId = DB::table('entity_migration_map')
            //                 ->where('old_entity_id', $legacyValidation->entities_id)
            //                 ->value('new_entity_id');

            // if (!$newEntityId) {
            // \Log::warning("Entidade migrada não encontrada para o documento ID: " . $legacyFile->id);
            // continue;
            // }


            // Mapeamento do documento relacionado, caso exista
            if (!is_null($legacyValidation->documents_id)) {
                $newDocumentId = $legacyValidation->documents_id;
            } else {
                $newDocumentId = DB::table('tickettasks_migration_map')
                                ->where('old_tickettask_id', $legacyValidation->tickettasks_id)
                                ->value('new_document_id');
            }

            if (!$newDocumentId) {
                \Log::warning("O documento objeto dessa assinatura não foi migrado " . $legacyValidation->tickettasks_id);
                continue;
            }



            // Mapeamento do status da assinatura
            $signatureStatusMap = [
                2 => 1,  // Status 'solicitado => aguardando'
                3 => 2,  // Status 'assinado => aprovado'
                4 => 3,  // Status 'recusardo => reprovado'
            ];
            $signatureStatusId = $signatureStatusMap[$legacyValidation->status] ?? 2; // Padrão: 'aguardando'

            // Dados da assinatura a serem inseridos
            $signatureData = [
                'document_id' => $newDocumentId,             
                'user_id' => $newUserId,
                'user_approval_id' => $newUserApprovalId,
                'signature_status_id' => $signatureStatusId,
                'observation' => $legacyValidation->comment_submission,
                'comment' => $legacyValidation->comment_validation,
                'created_at' => $legacyValidation->submission_date ?? now(),
                'updated_at' => $legacyValidation->validation_date ?? now(),
                'deleted_at' => null,
            ];

            // Inserir assinatura na tabela `signatures`
            $newSignatureId = DB::connection('mysql')->table('signatures')->insertGetId($signatureData);

            // Armazenar o mapeamento de IDs no banco de dados
            DB::table('signature_migration_map')->insert([
                'old_signature_id' => $legacyValidation->id,
                'new_signature_id' => $newSignatureId,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            $count++;

            // Atualizar progresso da migração a cada 5 registros
            if ($count % 5 == 0) {
                DB::table('migration_status')
                    ->where('id', $migrationId)
                    ->increment('imported_records', 5);
                \Log::info("Atualizado progresso da migração de assinaturas. Processadas $count assinaturas.");
            }

        } catch (\Exception $e) {
            DB::table('migration_errors')->insert([
                'migration_id' => $migrationId,
                'old_signature_id' => $legacyValidation->id,
                'error_message' => $e->getMessage(),
                'created_at' => now(),
            ]);

            \Log::error("Erro ao migrar assinatura ID: " . $legacyValidation->id . " - " . $e->getMessage());
            continue;
        }
    }

    // Finalizar a operação de migração
    DB::table('migration_status')->where('id', $migrationId)->update([
        'imported_records' => $count,
        'status' => 'completed',
        'completed_at' => now(),
    ]);

    \Log::info("Migração de assinaturas concluída com sucesso para ID: $migrationId.");
}

        private function mapLogEvent($linkedAction)
        {
            $eventMap = [
                0 => 'create',
                1 => 'update',
                2 => 'delete',
                // Adicione outros valores de mapeamento conforme necessário
            ];

            return $eventMap[$linkedAction] ?? 'unknown';
        }


        private function migrateLogs($migrationId, $legacyLogs)
        {
            \Log::info("Iniciando migração de logs do sistema com ID de migração: $migrationId");
        
            $count = 0;
        
            foreach ($legacyLogs as $legacyLog) {
                try {
                    // Verificar se o log já foi migrado para evitar duplicações
                    $existingMapping = DB::table('audit_migration_map')->where('old_log_id', $legacyLog->id)->first();
                    if ($existingMapping) {
                        \Log::info("Log já migrado: " . $legacyLog->id);
                        continue;
                    }
        
                    // Mapear o usuário, se disponível
                    // Mapear o usuário, se disponível
                    $userName = $legacyLog->user_name;
                    $oldUserId = null;

                        // Extrair o ID do usuário entre parênteses usando uma expressão regular
                        if (preg_match('/\((\d+)\)$/', $userName, $matches)) {
                            $oldUserId = $matches[1]; // O ID do usuário extraído está na primeira posição do array $matches
                        }

                        if ($oldUserId) {
                            $userId = DB::table('user_migration_map')
                                        ->where('old_user_id', $oldUserId)
                                        ->value('new_user_id');
                        } else {
                            \Log::warning("ID de usuário não encontrado no campo user_name para log ID: " . $legacyLog->id);
                        }
        
                    // Preparar os dados do log para inserção na nova tabela `audits`
                    $auditData = [
                        'event' => $this->mapLogEvent($legacyLog->linked_action),
                        'user_id' => $userId,
                        'item_type' => substr($legacyLog->itemtype, 0, 48),
                        'item_id' => $legacyLog->items_id,
                        'data' => json_encode([
                            'old_value' => $legacyLog->old_value,
                            'new_value' => $legacyLog->new_value,
                            'action' => $legacyLog->linked_action,
                            'id_search_option' => $legacyLog->id_search_option
                        ]),
                        'ipv4' => request()->ip(),
                        'created_at' => $legacyLog->date_mod ?? now(),
                        'updated_at' => $legacyLog->date_mod ?? now(),
                    ];
        
                    // Inserir o log na tabela `audits`
                    $newAuditId = DB::connection('mysql')->table('audits')->insertGetId($auditData);
        
                    // Armazenar o mapeamento de IDs no banco de dados
                    DB::table('audit_migration_map')->insert([
                        'old_log_id' => $legacyLog->id,
                        'new_audit_id' => $newAuditId,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
        
                    $count++;
        
                    // Atualizar progresso da migração a cada 20 registros
                    if ($count % 20 == 0) {
                        DB::table('migration_status')
                            ->where('id', $migrationId)
                            ->increment('imported_records', 20);
                        \Log::info("Atualizado progresso da migração de logs. Processados $count registros.");
                    }
        
                } catch (\Exception $e) {
                    // Registrar erro no banco de dados
                    DB::table('migration_errors')->insert([
                        'migration_id' => $migrationId,
                        'old_log_id' => $legacyLog->id,
                        'error_message' => $e->getMessage(),
                        'created_at' => now(),
                    ]);
        
                    \Log::error("Erro ao migrar log ID: " . $legacyLog->id . " - " . $e->getMessage());
                    continue;
                }
            }
        
            // Finalizar a operação de migração
            DB::table('migration_status')->where('id', $migrationId)->update([
                'imported_records' => $count,
                'status' => 'completed',
                'completed_at' => now(),
            ]);
        
            \Log::info("Migração de logs concluída com sucesso para ID: $migrationId.");
        }
        


    private function migrateFiles($migrationId, $legacyFiles)
        {
            \Log::info("Iniciando migração de documentos para arquivos com ID de migração: $migrationId");
    
            $count = 0;
    
            foreach ($legacyFiles as $legacyFile) {
                try {
                    // Verificar se o documento já foi migrado para evitar duplicações
                    $existingMapping = DB::table('file_migration_map')->where('old_file_id', $legacyFile->id)->first();
                    if ($existingMapping) {
                        \Log::info("Documento já migrado: " . $legacyFile->id);
                        continue;
                    }
    
                    // Buscar mapeamento de entidade
                    $newEntityId = DB::table('entity_migration_map')
                                    ->where('old_entity_id', $legacyFile->entities_id)
                                    ->value('new_entity_id');
    
                    if (!$newEntityId) {
                        \Log::warning("Entidade migrada não encontrada para o documento ID: " . $legacyFile->id);
                        continue;
                    }
    
                    // Buscar mapeamento de usuário
                    $newUserId = DB::table('user_migration_map')
                                    ->where('old_user_id', $legacyFile->users_id)
                                    ->value('new_user_id');
    
                    if (!$newUserId) {
                        \Log::warning("Usuário migrado não encontrado para o documento ID: " . $legacyFile->id);
                        continue;
                    }
    
                    // Garantir que o path do arquivo seja truncado para o limite do banco (1024 caracteres)
                    $filePath = substr($legacyFile->filepath, 0, 1024);

                    if($legacyFile->is_deleted){

                    }
    
                    // Dados do novo arquivo
                    $fileData = [
                        'name' => substr($legacyFile->name, 0, 255),
                        'path' => $filePath,
                        'type' => substr($legacyFile->mime, 0, 64),
                        'user_id' => $newUserId,
                        'document_id' => null, //  
                        'process_id' => $legacyFile->tickets_id,
                        'size' => 0,
                        'created_at' => $legacyFile->date_creation ?? now(),
                        'updated_at' => $legacyFile->date_mod ?? now(),
                        'deleted_at' => $legacyFile->is_deleted ? $legacyFile->date_mod : null,
                        'url' =>  $legacyFile->link, 
                    ];
    
                    // Inserir dados na tabela `files`
                    $newFileId = DB::connection('mysql')->table('files')->insertGetId($fileData);
    
                    // Armazenar o mapeamento de IDs e dados adicionais no banco de dados
                    DB::table('file_migration_map')->insert([
                        'old_file_id' => $legacyFile->id,
                        'new_file_id' => $newFileId,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ]);
    
                    $count++;
    
                    if ($count % 5 == 0) {
                        // Atualizar o progresso da migração
                        DB::table('migration_status')
                            ->where('id', $migrationId)
                            ->increment('imported_records', 5);
                        \Log::info("Atualizado progresso da migração de documentos. Processados $count arquivos até agora.");
                    }
    
                } catch (\Exception $e) {
                    DB::table('migration_errors')->insert([
                        'migration_id' => $migrationId,
                        'old_file_id' => $legacyFile->id,
                        'error_message' => $e->getMessage(),
                        'created_at' => now(),
                    ]);
    
                    \Log::error("Erro ao migrar documento ID: " . $legacyFile->id . " - " . $e->getMessage());
                    continue;
                }
            }
    
            // Finalizar a operação de migração
            DB::table('migration_status')->where('id', $migrationId)->update([
                'imported_records' => $count,
                'status' => 'completed',
                'completed_at' => now(),
            ]);
    
            \Log::info("Migração de documentos concluída com sucesso para ID: $migrationId.");
        }

    private function migrateTickettasks($migrationId, $legacyTasks)
    {
        \Log::info("Iniciando migração de tickettasks para documentos com ID de migração: $migrationId");

        $count = 0;

        foreach ($legacyTasks as $legacyTask) {
            try {
                // Verificar se já foi migrado
                $existingMapping = DB::table('tickettasks_migration_map')->where('old_tickettask_id', $legacyTask->id)->first();
                if ($existingMapping) {
                    \Log::info("Tickettask já migrado: " . $legacyTask->id);
                    continue;
                }

                // Buscar entidade relacionada ao processo (tickets_id)
                $newEntityId = DB::table('processes')
                                ->where('id', $legacyTask->tickets_id)
                                ->value('entity_id');
                
                // $newUserId= DB::table('user_migration_map')
                //                 ->where('old_user_id', $legacyTask->users_id)
                //                 ->value('new_user_id');

                // $newUserIdTech = DB::table('user_migration_map')
                //             ->where('old_user_id', $legacyTask->users_id_tech)
                //             ->value('new_user_id');               
                                
               
                $oldUserIds = [$legacyTask->users_id, $legacyTask->users_id_tech];

                $userMappings = DB::table('user_migration_map')
                            ->whereIn('old_user_id', $oldUserIds)
                            ->pluck('new_user_id', 'old_user_id');

                // Recupere os valores mapeados usando as chaves
                $newUserId = $userMappings[$legacyTask->users_id] ?? null;
                $newUserIdTech = $userMappings[$legacyTask->users_id_tech] ?? null;

                $contentDeMigracao = DB::table('documents')
                        ->where('name', 'Migração')
                        ->value('content');



                // Montar dados de inserção para o documento
                $documentData = [
                    'content' =>  $contentDeMigracao,
                    'html' => $legacyTask->content,
                    'process_id' => $legacyTask->tickets_id, 
                    'user_id' => $newUserId,
                    'entity_id' => $newEntityId, 
                    'user_recipient_id' =>  $newUserIdTech,
                    'doc_template_id' => $legacyTask->tasktemplates_id, 
                    'page_count' => 1,                  
                    'created_at' => $legacyTask->date_creation ?? now(),
                    'updated_at' => $legacyTask->date_mod ?? now(),
                    'name' => "Migrado Sigep1",
                    'finish_page' => 1,
                ];

                // Inserir dados na tabela `documents`
                $newDocumentId = DB::connection('mysql')->table('documents')->insertGetId($documentData);

                // Armazenar o mapeamento na tabela `tickettasks_migration_map`
                DB::table('tickettasks_migration_map')->insert([
                    'old_tickettask_id' => $legacyTask->id,
                    'new_document_id' => $newDocumentId,
                    'taskcategories_id' => $legacyTask->taskcategories_id,
                    'state' => $legacyTask->state,
                    'is_private' => $legacyTask->is_private,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);

                $count++;

                // Atualizar progresso da migração
                if ($count % 5 == 0) {
                    DB::table('migration_status')
                        ->where('id', $migrationId)
                        ->increment('imported_records', 5);
                    \Log::info("Atualizado progresso de tickettasks. Processados $count despachos.");
                }

            } catch (\Exception $e) {
                DB::table('migration_errors')->insert([
                    'migration_id' => $migrationId,
                    'old_tickettask_id' => $legacyTask->id,
                    'error_message' => $e->getMessage(),
                    'created_at' => now(),
                ]);

                \Log::error("Erro ao migrar tickettask ID: " . $legacyTask->id . " - " . $e->getMessage());
                continue;
            }
        }

        // Finalizar a operação de migração
        DB::table('migration_status')->where('id', $migrationId)->update([
            'imported_records' => $count,
            'status' => 'completed',
            'completed_at' => now(),
        ]);

        \Log::info("Migração de tickettasks concluída com sucesso para ID: $migrationId.");
    }



    private function migrateProcesses($migrationId, $legacyProcesses)
    {
        \Log::info("Iniciando migração de processos com ID: $migrationId");

        $count = 0;

        foreach ($legacyProcesses as $legacyProcess) {
            try {
                \Log::info("Migrando processo ID: " . $legacyProcess->id);

                // Verificar se o processo já foi migrado para evitar duplicações
                $existingMapping = DB::table('process_migration_map')->where('old_process_id', $legacyProcess->id)->first();
                if ($existingMapping) {
                    \Log::info("Processo já migrado: " . $legacyProcess->id);
                    continue; // Ignorar se já foi migrado
                }

                // Buscar `new_entity_id` do mapeamento de entidades
                $newEntityId = DB::table('entity_migration_map')
                                ->where('old_entity_id', $legacyProcess->entities_id)
                                ->value('new_entity_id');


                $users_id_recipient = DB::table('user_migration_map')
                                    ->where('old_user_id', $legacyProcess->users_id_recipient)
                                    ->value('new_user_id');

                $users_id_lastupdater = DB::table('user_migration_map')
                                    ->where('old_user_id', $legacyProcess->users_id_lastupdater)
                                    ->value('new_user_id');


                if (!$newEntityId) {
                    \Log::warning("Entidade migrada não encontrada para o processo ID: " . $legacyProcess->id);
                    continue; // Ignorar processos sem entidade migrada
                }

                // Mapear e limitar os campos conforme o "de-para" fornecido
                $processData = [
                    'id' => $legacyProcess->id,
                    'title' => substr($legacyProcess->name, 0, 255), // Limite de 255 caracteres
                    'process_number' => substr($legacyProcess->e_processo, 0, 45), // Limite de 45 caracteres
                    'subject' => substr($legacyProcess->name, 0, 2048), // Limite de 2048 caracteres
                    'process_type_id' => 23,
                    'process_status_id' => 20,
                    'user_issuer_id' => $users_id_recipient,
                    'entity_id' => $newEntityId,
                    'user_last_updated_id' =>  $users_id_lastupdater,
                    'user_answering_id' => null,
                    'confidential' => $legacyProcess->is_private,
                    'form_completed_id' => null,
                    'created_at' => $legacyProcess->date_creation ?? now(),
                    'updated_at' => $legacyProcess->date_mod ?? now()
                ];

                // Inserir dados na tabela `processes` no banco de dados
                $newProcessId = DB::connection('mysql')->table('processes')->insertGetId($processData);

                // Armazenar o mapeamento de IDs e dados adicionais no banco de dados
                DB::table('process_migration_map')->insert([
                    'old_process_id' => $legacyProcess->id,
                    'new_process_id' => $legacyProcess->id,
                    'status' => $legacyProcess->status,
                    'is_deleted' => $legacyProcess->is_deleted,
                    'validation_percent' => $legacyProcess->validation_percent,
                    'type' => $legacyProcess->type,
                    'itilcategories_id' => $legacyProcess->itilcategories_id,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);

                $count++;

                if ($count % 5 == 0) {
                    // Atualizar o progresso da migração
                    DB::table('migration_status')
                        ->where('id', $migrationId)
                        ->increment('imported_records', 5);
                    \Log::info("Atualizado progresso da migração de processos. Processados $count processos até agora.");
                }

            } catch (\Exception $e) {
                DB::table('migration_errors')->insert([
                    'migration_id' => $migrationId,
                    'old_process_id' => $legacyProcess->id,
                    'error_message' => $e->getMessage(),
                    'created_at' => now(),
                ]);

                \Log::error("Erro ao migrar processo ID: " . $legacyProcess->id . " - " . $e->getMessage());
                continue;
            }
        }

        // Finalizar a operação de migração
        DB::table('migration_status')->where('id', $migrationId)->update([
            'imported_records' => $count,
            'status' => 'completed',
            'completed_at' => now(),
        ]);

        \Log::info("Migração de processos concluída com sucesso para ID: $migrationId.");
    }


    private function migrateEntities($migrationId, $legacyEntities)
    {
        \Log::info("Iniciando migração de entidades com ID: $migrationId");

        $count = 0;

        // Primeira Etapa: Inserir entidades sem o `entity_id`
        foreach ($legacyEntities as $legacyEntity) {
            try {
                \Log::info("Migrando entidade ID: " . $legacyEntity->id);

                  // Verificar se a entidade já foi migrada para evitar duplicações (garantia adicional)
                $existingMapping = DB::table('entity_migration_map')->where('old_entity_id', $legacyEntity->id)->first();
                if ($existingMapping) {
                    \Log::info("Entidade já migrada: " . $legacyEntity->id);
                    continue; // Ignorar se já foi migrada
                }


                $name = substr($legacyEntity->name, 0, 120);
                // Limitar o nome da entidade e outras strings para evitar truncamento
                $description = ($legacyEntity->comment !== null && trim($legacyEntity->comment) !== '') 
                                ? substr($legacyEntity->comment, 0, 250) 
                                : substr($legacyEntity->completename, 0, 250);


                 // Usar diretamente o 'type' para definir o 'entity_type_id'
                 $entityTypeId = $legacyEntity->type;

                // Verificar o tipo de entidade - Tentando mapear diretamente pelo nome!! poderia funcionar mais pra ser 
                // mais assertivo ja que teria mesmo um trabalho manual para verificar esses relacionamentos, seja pelo negocio
                // ou pelo TI, resolvir agilizar criando um campo type para a tabela antiga. e comentei o código abaixo que talvez
                // queriam ativar novamente no futuro. mas suas assertividade nunca será perfeita. 
                //$typeKey = strtolower($legacyEntity->name); // Exemplificação de como encontrar o 'type'
                // $entityType = $entityTypeMap->get($typeKey);



                if (!$entityTypeId) {
                    \Log::warning("Tipo de entidade não encontrado para: " . $$name);
                    continue;
                }

                $initials = substr($this->generateAcronym($name), 0, 8);
                $initials = mb_convert_encoding($initials, 'UTF-8', 'UTF-8');

                // Inserir os dados na nova tabela de entidades, sem definir o `entity_id`
                $newEntityId = DB::connection('mysql')->table('entities')->insertGetId([
                    'name' => $name,
                    'initials' => $initials,
                    'description' => $description,
                    'entity_type_id' => $entityTypeId,
                    'entity_id' => null, // Inserir com null por enquanto
                    'general_status_id' => 1, // Status ativo
                    'created_at' => $legacyEntity->date_creation ?? now(),
                    'updated_at' => $legacyEntity->date_mod ?? now(),
                ]);

                // Armazenar o mapeamento de IDs no banco de dados
                DB::table('entity_migration_map')->insert([
                    'old_entity_id' => $legacyEntity->id,
                    'new_entity_id' => $newEntityId,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);

                $count++;

                if ($count % 5 == 0) {
                    // Atualizar o progresso da migração
                    DB::table('migration_status')
                        ->where('id', $migrationId)
                        ->increment('imported_records', 20);
                    \Log::info("Atualizado progresso da migração de entidades. Processadas $count entidades até agora.");
                }

            } catch (\Exception $e) {
                DB::table('migration_errors')->insert([
                    'migration_id' => $migrationId,
                    'old_user_id' => $legacyEntity->id,
                    'error_message' => $e->getMessage(),
                    'created_at' => now(),
                ]);

                \Log::error("Erro ao migrar entidade ID: " . $legacyEntity->id . " - " . $e->getMessage());
                continue;
            }
        }

        // Segunda Etapa: Atualizar `entity_id` para relacionamentos corretos
        foreach ($legacyEntities as $legacyEntity) {
            try {
                $newEntityId = DB::table('entity_migration_map')
                                ->where('old_entity_id', $legacyEntity->id)
                                ->value('new_entity_id');

                $parentOldId = $legacyEntity->entities_id;
                
                // Verificar se a entidade pai existe no mapeamento e atualizar o `entity_id`
                if ($parentOldId > 0) {
                    $parentNewId = DB::table('entity_migration_map')
                                    ->where('old_entity_id', $parentOldId)
                                    ->value('new_entity_id');
                    
                    if ($parentNewId) {
                        DB::connection('mysql')->table('entities')
                            ->where('id', $newEntityId)
                            ->update(['entity_id' => $parentNewId]);
                    
                        \Log::info("Entidade ID: $newEntityId atualizada com pai ID: $parentNewId.");
                    }
                }

            } catch (\Exception $e) {
                DB::table('migration_errors')->insert([
                    'migration_id' => $migrationId,
                    'old_user_id' => $legacyEntity->id,
                    'error_message' => $e->getMessage(),
                    'created_at' => now(),
                ]);

                \Log::error("Erro ao atualizar relacionamento da entidade ID: " . $legacyEntity->id . " - " . $e->getMessage());
                continue;
            }
        }

        // Finalizar a operação de migração
        DB::table('migration_status')->where('id', $migrationId)->update([
            'imported_records' => $count,
            'status' => 'completed',
            'completed_at' => now(),
        ]);

        \Log::info("Migração de entidades concluída com sucesso para ID: $migrationId.");
    }

    private function generateAcronym($string) {  
        
        
    // tiver que colocar caracters especiais por '-' estavam quebrando a inserção dos dados. por isso os traço são diferentes 
    $ignoreWords = ['da', 'de', 'do', 'das', 'dos', 'e', 'a', 'o', '-', '–', '—', '‐', '−'];


    // Dividir a string em palavras
    $words = explode(' ', $string);

    // Se houver apenas uma palavra, retornar a própria palavra como acrônimo
    if (count($words) === 1) {
        return strtoupper($string);
    }

    // Filtrar e pegar a primeira letra de cada palavra que não está na lista de ignoradas
    $acronym = '';
    foreach ($words as $word) {
        if (!in_array(strtolower($word), $ignoreWords) && !empty($word)) {   
            // Convertendo para UTF-8 de forma segura
            $firstChar = mb_substr($word, 0, 1, 'UTF-8');

            // Verificar se é um caractere válido em UTF-8, substituindo se necessário
            if (mb_check_encoding($firstChar, 'UTF-8')) {
                // Adicionar ao acrônimo
                $acronym .= strtoupper($firstChar);
            } else {
                // Substituir caracteres inválidos por um símbolo ou apenas ignorar
                $acronym .= '?'; // ou continue; para ignorar
            }
        }
    }

    return $acronym;
    }

    private function migrateProfiles($migrationId, $legacyProfiles)
    {
    // Definição do de-para de profiles
    $profileMap = [
        1 => 1, // (1, 2, 3, 4) => 1
        2 => 1,
        3 => 1,
        4 => 1,
        5 => 3, // (5, 7, 9) => 3
        7 => 3,
        9 => 3,
        6 => 4, // (6) => 4
        8 => 2, // (8) => 2
    ];

    // Obter todos os mapeamentos de usuários já migrados
    $userMigrationMap = DB::table('user_migration_map')->get()->keyBy('old_user_id');

    $count = 0;

    foreach ($legacyProfiles as $legacyProfile) {
        $oldUserId = $legacyProfile->users_id;
        
        try {
            // Verificar se o usuário foi migrado
            if (isset($userMigrationMap[$oldUserId])) {
                $newUserId = $userMigrationMap[$oldUserId]->new_user_id;

                // Verificar o profile_id no de-para
                $legacyProfileId = $legacyProfile->profiles_id;
                if (isset($profileMap[$legacyProfileId])) {
                    $newProfileId = $profileMap[$legacyProfileId];

                    // Verificar se já existe um mapeamento na tabela `user_profiles`
                    $existingProfile = DB::connection('mysql')->table('user_profiles')
                                        ->where('user_id', $newUserId)
                                        ->where('profile_id', $newProfileId)
                                        ->first();

                    if (!$existingProfile) {
                        // Criar o registro na tabela user_profiles
                        DB::connection('mysql')->table('user_profiles')->insert([
                            'user_id' => $newUserId,
                            'profile_id' => $newProfileId,
                            'created_at' => now(),
                            'updated_at' => now(),
                        ]);

                        \Log::info("Perfil migrado para usuário ID: $newUserId, Profile ID: $newProfileId");
                    } else {
                        \Log::info("Usuário ID: $newUserId já possui o Profile ID: $newProfileId registrado. Ignorando.");
                    }

                    $count++;

                    // Atualizar o progresso da migração
                    if ($count % 20 == 0) {
                        DB::table('migration_status')
                            ->where('id', $migrationId)
                            ->increment('imported_records', 20);
                        \Log::info("Atualizado progresso da migração de perfis. Processados $count perfis até agora.");
                    }
                } else {
                    \Log::warning("Profile ID: $legacyProfileId não possui mapeamento definido. Ignorando.");
                }
            } else {
                \Log::warning("Usuário ID: $oldUserId não foi migrado. Ignorando perfil.");
            }
        } catch (\Exception $e) {
            // Registrar erro no banco de dados
            DB::table('migration_errors')->insert([
                'migration_id' => $migrationId,
                'old_user_id' => $oldUserId,
                'error_message' => $e->getMessage(),
                'created_at' => now(),
            ]);

            \Log::error("Erro ao migrar perfil para usuário ID: " . $oldUserId . " - " . $e->getMessage());
        }
    }

    // Atualizar registros importados restantes e finalizar a operação de migração
    DB::table('migration_status')->where('id', $migrationId)->update([
        'imported_records' => $count,
        'status' => 'completed',
        'completed_at' => now(),
    ]);

    \Log::info("Migração de perfis concluída com sucesso para $migrationId.");
    }

 
    private function migrateUsers($migrationId, $legacyUsers)
    {
        \Log::info("Iniciando migração de $migrationId com " . count($legacyUsers) . " usuários.");

        $legacyEmails = DB::connection('legacy')->table('glpi_useremails')->get();
        $count = 0;

        foreach ($legacyUsers as $legacyUser) {
            try {
                \Log::info("Iniciando migração do usuário ID: " . $legacyUser->id);

                // Verificar se o usuário já foi migrado para evitar duplicações (garantia adicional)
                $existingMapping = DB::table('user_migration_map')->where('old_user_id', $legacyUser->id)->first();
                if ($existingMapping) {
                    \Log::info("Usuário já migrado: " . $legacyUser->id);
                    continue; // Ignorar se já foi migrado
                }

                // Limitar o login para no máximo 20 caracteres
                $login = substr($legacyUser->name, 0, 20);

                \Log::info("Verificando se o login $login já existe no novo sistema.");
                $userExists = DB::connection('mysql')->table('users')->where('login', $login)->exists();
                if ($userExists) {
                    \Log::warning("Usuário duplicado com o login: $login");

                    DB::table('migration_errors')->insert([
                        'migration_id' => $migrationId,
                        'old_user_id' => $legacyUser->id,
                        'error_message' => 'Erro (Usuário Duplicado) erro ao importar o usuário com o mesmo nome de login',
                        'created_at' => now(),
                    ]);
                    continue; // Ignorar se já foi migrado
                }

                // Buscar o e-mail padrão (is_default) do usuário na tabela glpi_useremails
                $email = $legacyEmails->where('users_id', $legacyUser->id)
                                    ->where('is_default', 1)
                                    ->first()->email ?? null;

                \Log::info("Inserindo novo usuário ID: " . $legacyUser->id);

                // Inserir os dados no novo banco de dados (sigep2)
                $newUserId = DB::connection('mysql')->table('users')->insertGetId([
                    'name' => substr($legacyUser->firstname . ' ' . $legacyUser->realname, 0, 90),
                    'login' => $login,
                    'password' => Hash::make($legacyUser->password),
                    'document' => substr(strval(preg_replace('/[^0-9]/', '', (is_null($legacyUser->cpf_cnpj) || empty($legacyUser->cpf_cnpj) ? '99999999999' : $legacyUser->cpf_cnpj))), -11),
                    'email' => $email,
                    'celphone' => substr(preg_replace('/[^0-9]/', '', $legacyUser->mobile), -11),
                    'registration' => $legacyUser->registration_number,
                    'general_status_id' => ($legacyUser->is_active == 1) ? 1 : 2,
                    'auth_type_id' => 1,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);

                // Salvar o mapeamento entre o ID antigo e o novo
                DB::table('user_migration_map')->insert([
                    'old_user_id' => $legacyUser->id,
                    'new_user_id' => $newUserId,
                ]);

                $count++;
                \Log::info("Usuário migrado com sucesso. Total migrado: $count");

                if ($count % 20 == 0) {
                    \Log::info("Processados $count usuários até agora.");
                    sleep(1); // Pausar por 1 segundo (ou remova se não precisar)
                }

                // Atualizar o progresso da migração
                DB::table('migration_status')
                ->where('id', $migrationId)
                ->increment('imported_records');

            } catch (\Exception $e) {
                DB::table('migration_errors')->insert([
                    'migration_id' => $migrationId,
                    'old_user_id' => $legacyUser->id,
                    'error_message' => $e->getMessage(),
                    'created_at' => now(),
                ]);

                \Log::error("Erro ao migrar usuário ID: " . $legacyUser->id . " - " . $e->getMessage());
                continue;
            }
        }

        // Finalizar a operação de migração
        DB::table('migration_status')->where('id', $migrationId)->update([
            'status' => 'completed',
            'completed_at' => now(),
        ]);

        \Log::info("Migração finalizada com sucesso para $migrationId");
    }



   

}  