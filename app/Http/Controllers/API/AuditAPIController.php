<?php

namespace App\Http\Controllers\API;

use App\Exports\GenericExport;
use App\Http\Requests\API\CreateAuditAPIRequest;
use App\Http\Requests\API\UpdateAuditAPIRequest;
use App\Models\Audit;
use App\Repositories\AuditRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Maatwebsite\Excel\Facades\Excel;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class AuditController
 * @package App\Http\Controllers\API
 */

class AuditAPIController extends AppBaseController
{
    /** @var  AuditRepository */
    private $auditRepository;

    public function __construct(AuditRepository $auditRepo)
    {
        $this->auditRepository = $auditRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/audits",
     *      summary="Get a listing of the Audits.",
     *      tags={"Audit"},
     *      description="Get all Audits",
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
     *                  @SWG\Items(ref="#/definitions/Audit")
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function index(Request $request)
    {
        $this->auditRepository->pushCriteria(new RequestCriteria($request));
        $this->auditRepository->pushCriteria(new LimitOffsetCriteria($request));
        if($request->excel){
            $audits = $this->auditRepository->get();
            return Excel::download(new GenericExport($audits),'processes.xlsx');
        }else{
            $audits = $this->auditRepository->paginate(50);
        }

        return $this->sendResponse($audits->toArray(), 'Audits retrieved successfully');
    }

    /**
     * @param CreateAuditAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/audits",
     *      summary="Store a newly created Audit in storage",
     *      tags={"Audit"},
     *      description="Store Audit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Audit that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Audit")
     *      ),
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
     *                  ref="#/definitions/Audit"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateAuditAPIRequest $request)
    {
        $input = $request->all();

        $audit = $this->auditRepository->create($input);

        return $this->sendResponse($audit->toArray(), 'Audit saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/audits/{id}",
     *      summary="Display the specified Audit",
     *      tags={"Audit"},
     *      description="Get Audit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Audit",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
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
     *                  ref="#/definitions/Audit"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function show($id)
    {
        /** @var Audit $audit */
        $audit = $this->auditRepository->find($id);

        if (empty($audit)) {
            return $this->sendError('Audit not found');
        }

        return $this->sendResponse($audit->toArray(), 'Audit retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateAuditAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/audits/{id}",
     *      summary="Update the specified Audit in storage",
     *      tags={"Audit"},
     *      description="Update Audit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Audit",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Audit that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Audit")
     *      ),
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
     *                  ref="#/definitions/Audit"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateAuditAPIRequest $request)
    {
        $input = $request->all();

        /** @var Audit $audit */
        $audit = $this->auditRepository->find($id);

        if (empty($audit)) {
            return $this->sendError('Audit not found');
        }

        $audit = $this->auditRepository->update($input, $id);

        return $this->sendResponse($audit->toArray(), 'Audit updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/audits/{id}",
     *      summary="Remove the specified Audit from storage",
     *      tags={"Audit"},
     *      description="Delete Audit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Audit",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
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
     *                  type="string"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function destroy($id)
    {
        /** @var Audit $audit */
        $audit = $this->auditRepository->find($id);

        if (empty($audit)) {
            return $this->sendError('Audit not found');
        }

        $audit->delete();

        return $this->sendResponse([], 'Audit deleted successfully');
    }
}
