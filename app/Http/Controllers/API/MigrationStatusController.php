<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\AppBaseController;

class MigrationStatusController extends AppBaseController
{
    public function getMigrationStatus(Request $request)
    {
        $type = $request->input('type');
        $statusFilter = $request->input('status', 'in_progress'); // Pode ser 'in_progress', 'completed', 'failed', etc.

        if (!$type) {
            return response()->json(['error' => 'O tipo de migração é necessário.'], 400);
        }

        // Obter a última migração para o tipo específico e status fornecido
        $query = DB::table('migration_status')
                    ->where('table_name', $type)
                    ->orderBy('started_at', 'desc');

        // Aplicar filtro de status
        if ($statusFilter === 'recently_completed') {
            // Mostrar as migrações completadas nos últimos 5 minutos (ajuste conforme necessário)
            $query->where('status', 'completed')
                  ->where('completed_at', '>=', now()->subMinutes(5));
        } else {
            $query->where('status', $statusFilter);
        }

        $status = $query->first();

        if (!$status) {
            return response()->json(['error' => 'Nenhuma migração encontrada para este tipo e status.'], 404);
        }

        return response()->json([
            'status' => $status->status,
            'total_records' => $status->total_records,
            'imported_records' => $status->imported_records,
            'started_at' => $status->started_at,
            'completed_at' => $status->completed_at
        ]);
    }
}
