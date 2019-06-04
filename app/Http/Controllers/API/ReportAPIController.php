<?php

namespace App\Http\Controllers\API;

use App\Repositories\ReportRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use Response;

/**
 * Class ReportController
 * @package App\Http\Controllers\API
 */

class ReportAPIController extends AppBaseController
{
    /** @var  ReportRepository */
    private $reportRepository;
    private $anoRef;
    private $codBol;

    public function __construct(ReportRepository $reportRepo)
    {
        $this->reportRepository = $reportRepo;

        // Pegando codBol e anoBol atual automaticamente
        $this->anoRef = date('Y') . (date('m') < 7 ? 1 : 2);
        $this->codBol = date('m') - (date('m') < 7 ? 0 : 6);
    }

    /**
     * @return Response
     *
     * @SWG\Get(
     *      path="/reports/enroleds",
     *      summary="Retorna uma lista de alunos matriculados por ano.",
     *      tags={"Enroled"},
     *      description="Retorna uma lista de alunos matriculados por ano.",
     *      produces={"application/json"},
     *      @SWG\Response(
     *          response=200,
     *          description="successful operation",
     *          @SWG\Schema(
     *              type="object",
     *              @SWG\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @SWG\Property(
     *                  property="data",
     *                  type="array",
     *                  @SWG\Items(ref="#/definitions/Report")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function enrolleds(Request $request)
    {
        $reports = $this->reportRepository->getEnrolledsStatistic(null, $this->anoRef);

        return $this->sendResponse(
            $reports->toArray(),
            'Relatório de alunos matriculados obtido com sucesso.'
        );
    }

    /**
     * @return Response
     *
     * @SWG\Get(
     *      path="/reports/mensalidades/geradas",
     *      summary="Retorna uma lista de alunos matriculados por ano.",
     *      tags={"Enroled"},
     *      description="Retorna uma lista de alunos matriculados por ano.",
     *      produces={"application/json"},
     *      @SWG\Response(
     *          response=200,
     *          description="successful operation",
     *          @SWG\Schema(
     *              type="object",
     *              @SWG\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @SWG\Property(
     *                  property="data",
     *                  type="array",
     *                  @SWG\Items(ref="#/definitions/Report")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function bolGer(Request $request)
    {
        $reports = $this->reportRepository->getBolGerStatistic($this->anoRef);

        return $this->sendResponse(
            $reports->toArray(),
            'Relatório de boletos gerados obtido com sucesso.'
        );
    }

    /**
     * @return Response
     *
     * @SWG\Get(
     *      path="/reports/mensalidades/pagas",
     *      summary="Retorna uma lista de alunos matriculados por ano.",
     *      tags={"Enroled"},
     *      description="Retorna uma lista de alunos matriculados por ano.",
     *      produces={"application/json"},
     *      @SWG\Response(
     *          response=200,
     *          description="successful operation",
     *          @SWG\Schema(
     *              type="object",
     *              @SWG\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @SWG\Property(
     *                  property="data",
     *                  type="array",
     *                  @SWG\Items(ref="#/definitions/Report")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function bolPag(Request $request)
    {
        $reports = $this->reportRepository->getBolPagStatistic($this->anoRef, $this->codBol);

        return $this->sendResponse(
            $reports->toArray(),
            'Relatório de boletos pagos obtido com sucesso.'
        );
    }

    /**
     * @return Response
     *
     * @SWG\Get(
     *      path="/reports/payments",
     *      summary="Retorna uma lista de alunos matriculados por ano.",
     *      tags={"Enroled"},
     *      description="Retorna uma lista de alunos matriculados por ano.",
     *      produces={"application/json"},
     *      @SWG\Response(
     *          response=200,
     *          description="successful operation",
     *          @SWG\Schema(
     *              type="object",
     *              @SWG\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @SWG\Property(
     *                  property="data",
     *                  type="array",
     *                  @SWG\Items(ref="#/definitions/Report")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function paymentStatistic(Request $request)
    {
        $reports = $this->reportRepository->getPaymentStatistic(
            date('Y-m-01 00:00:00'),
            date('Y-m-d 23:59:59')
        );

        return $this->sendResponse(
            $reports->toArray(),
            'Relatório de pagamentos obtido com sucesso.'
        );
    }

    /**
     * @return Response
     *
     * @SWG\Get(
     *      path="/reports/enrolleds/especials/without-discipline",
     *      summary="Retorna uma lista de alunos matriculados por ano.",
     *      tags={"Enroled"},
     *      description="Retorna uma lista de alunos matriculados por ano.",
     *      produces={"application/json"},
     *      @SWG\Response(
     *          response=200,
     *          description="successful operation",
     *          @SWG\Schema(
     *              type="object",
     *              @SWG\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @SWG\Property(
     *                  property="data",
     *                  type="array",
     *                  @SWG\Items(ref="#/definitions/Report")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function enrolledsEspWithoutDiscip(Request $request)
    {
        $reports = $this->reportRepository->getEnrolledsEspWithoutDiscip($this->anoRef);

        return $this->sendResponse(
            $reports->toArray(),
            'Relatório de alunos em regime especial e sem disciplinas obtido com sucesso.'
        );
    }

    /**
     * @return Response
     *
     * @SWG\Get(
     *      path="/reports/enrolleds/without-discipline",
     *      summary="Retorna uma lista de alunos matriculados por ano.",
     *      tags={"Enroled"},
     *      description="Retorna uma lista de alunos matriculados por ano.",
     *      produces={"application/json"},
     *      @SWG\Response(
     *          response=200,
     *          description="successful operation",
     *          @SWG\Schema(
     *              type="object",
     *              @SWG\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @SWG\Property(
     *                  property="data",
     *                  type="array",
     *                  @SWG\Items(ref="#/definitions/Report")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function enrolledsWithoutDiscip(Request $request)
    {
        $reports = $this->reportRepository->getEnrolledsWithoutDiscip($this->anoRef);

        return $this->sendResponse(
            $reports->toArray(),
            'Relatório de alunos sem disciplinas obtido com sucesso.'
        );
    }

        /**
     * @return Response
     *
     * @SWG\Get(
     *      path="/reports/mensalidades/without-value",
     *      summary="Retorna uma lista de alunos matriculados por ano.",
     *      tags={"Enroled"},
     *      description="Retorna uma lista de alunos matriculados por ano.",
     *      produces={"application/json"},
     *      @SWG\Response(
     *          response=200,
     *          description="successful operation",
     *          @SWG\Schema(
     *              type="object",
     *              @SWG\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @SWG\Property(
     *                  property="data",
     *                  type="array",
     *                  @SWG\Items(ref="#/definitions/Report")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function bolWithoutValue(Request $request)
    {
        $reports = $this->reportRepository->getBolWithoutValue($this->anoRef);

        return $this->sendResponse(
            $reports->toArray(),
            'Relatório de boletos zerados obtido com sucesso.'
        );
    }
}
