<?php

namespace App\Repositories;

use App\Models\BaseModel as Model;
use InfyOm\Generator\Common\BaseRepository;
use Illuminate\Support\Facades\DB;

/**
 * Class ReportRepository
 * @package App\Repositories
 * @version April 24, 2019, 6:07 pm UTC
 *
 * @method Report findWithoutFail($id, $columns = ['*'])
 * @method Report find($id, $columns = ['*'])
 * @method Report first($columns = ['*'])
 */
class ReportRepository extends BaseRepository
{
    public function getEnrolledsStatistic($startYear, $endYear)
    {

        if (empty($startYear)) {
            $startYear = $endYear - 30 + (substr($endYear, -1) == 1 ? 1 : -1);
        }

        return Model::select(['*'])->from('VW01RELMAT')
            ->whereBetween('ANOREF', [$startYear, $endYear])
            ->orderBy('ANOREF', 'ASC')
            ->get();
    }

    public function getBolGerStatistic($year)
    {
        return Model::select(['*'])->from('VW02BOLGER')
            ->where(['ANOREF' => $year])
            ->orderBy('TIPO', 'ASC')->orderBy('ANOREF', 'ASC')->orderBy('CODBOL', 'ASC')
            ->get();
    }

    public function getBolPagStatistic($year, $codBol)
    {
        return Model::select(['*'])->from('VW03BOLPAG')
            ->where(['ANOREF' => $year])->where(['CODBOL' => $codBol])
            ->orderBy('ANOREF', 'ASC')->orderBy('CODBOL', 'ASC')
            ->get();
    }

    public function getPaymentStatistic($startDate, $endDate)
    {
        return Model::select([DB::raw('SUM(ValorPago) AS VALOR'), 'TIPO_PAG', 'NIVEL'])
            ->from('VW04PAGAMENTOS')
            ->whereBetween('PF76DATEVE', [$startDate, $endDate])
            ->orderBy('VALOR')
            ->groupBy('TIPO_PAG', 'NIVEL')
            ->get();
    }

    public function getEnrolledsEspWithoutDiscip($year)
    {
        return Model::select(['FK3637CPDALU AS CPDALU'])
            ->from('BDSPFP.dbo.PF36ACAALT')
            ->leftJoin('BDSPFP.dbo.PF38GRAALT', function ($join) {
                $join->on([
                    ['FK3837CPDALU', '=', 'FK3637CPDALU'],
                    ['FK3833ANOREF', '=', 'PF36ANOREF']
                ])
                    ->where([
                        ['PF38INDSIT', '=', '01']
                    ]);
            })
            ->where([
                ['PF36ANOREF', '=', $year],
                ['PF36INDOFI', '=', 'V'],
                ['PF36INDFER', '=', 'E']
            ])
            ->whereIn('FK3635CODACA', ['01', '11'])
            ->groupBy('FK3637CPDALU')
            ->havingRaw('COUNT(FK3837CPDALU) = 0')
            ->get();
    }

    public function getEnrolledsWithoutDiscip($year)
    {
        return Model::select(['VW013637CPDALU AS CPDALU'])
            ->from('BDSPFP.dbo.VW01SITALUANO')
            ->leftJoin('BDSPFP.dbo.PF38GRAALT', function ($join) {
                $join->on([
                    ['FK3837CPDALU', '=', 'VW013637CPDALU'],
                    ['FK3833ANOREF', '=', 'VW0136ANOREF']
                ])
                    ->where([
                        ['PF38INDSIT', '=', '01'],
                        ['PF38SITDIS', '=', '01']
                    ]);
            })
            ->where([
                ['VW0136ANOREF', '=', $year],
                ['VW013635CODACA', '=', '01'],
                ['VW0136INDFER', '<>', 'E']
            ])
            ->groupBy('VW013637CPDALU')
            ->havingRaw('COUNT(FK3837CPDALU) = 0')
            ->get();
    }

    public function getBolWithoutValue($year)
    {
        return Model::select(['FK4737CPDALU AS CPDALU'])
            ->from('BDSPFP.dbo.PF47BOLETT')
            ->leftJoin('BDSPFP.dbo.PF48EFIMET', function ($join) {
                $join->on([
                    ['FK4737CPDALU', '=', 'FK4847CPDALU'],
                    ['PF47ANOBOL', '=', 'FK4847ANOBOL'],
                    ['PF47CODBOL', '=', 'FK4847CODBOL']
                ]);
            })
            ->where(['PF47ANOBOL' => $year])
            ->whereIn('PF47SITBOL', ['2', 'T'])
            ->whereNull('FK4847ANOBOL')
            ->groupBy('FK4737CPDALU')
            ->get();
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Model::class;
    }
}
