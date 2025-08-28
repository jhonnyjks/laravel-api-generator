<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateApprovalStatusAPIRequest;
use App\Http\Requests\API\UpdateApprovalStatusAPIRequest;
use App\Models\ApprovalStatus;
use App\Repositories\ApprovalStatusRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class ApprovalStatusController
 * @package App\Http\Controllers\API
 */

class ApprovalStatusAPIController extends AppBaseController
{
    /** @var  ApprovalStatusRepository */
    private $approvalStatusRepository;

    public function __construct(ApprovalStatusRepository $approvalStatusRepo)
    {
        $this->approvalStatusRepository = $approvalStatusRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/approvalStatuses",
     *      summary="Get a listing of the ApprovalStatuses.",
     *      tags={"ApprovalStatus"},
     *      description="Get all ApprovalStatuses",
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
     *                  @SWG\Items(ref="#/definitions/ApprovalStatus")
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
        $this->approvalStatusRepository->pushCriteria(new RequestCriteria($request));
        $this->approvalStatusRepository->pushCriteria(new LimitOffsetCriteria($request));
        $approvalStatuses = $this->approvalStatusRepository->paginate();

        return $this->sendResponse($approvalStatuses->toArray(), 'Approval Statuses retrieved successfully');
    }

    /**
     * @param CreateApprovalStatusAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/approvalStatuses",
     *      summary="Store a newly created ApprovalStatus in storage",
     *      tags={"ApprovalStatus"},
     *      description="Store ApprovalStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="ApprovalStatus that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/ApprovalStatus")
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
     *                  ref="#/definitions/ApprovalStatus"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateApprovalStatusAPIRequest $request)
    {
        $input = $request->all();

        $approvalStatus = $this->approvalStatusRepository->create($input);

        return $this->sendResponse($approvalStatus->toArray(), 'Approval Status saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/approvalStatuses/{id}",
     *      summary="Display the specified ApprovalStatus",
     *      tags={"ApprovalStatus"},
     *      description="Get ApprovalStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of ApprovalStatus",
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
     *                  ref="#/definitions/ApprovalStatus"
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
        /** @var ApprovalStatus $approvalStatus */
        $approvalStatus = $this->approvalStatusRepository->find($id);

        if (empty($approvalStatus)) {
            return $this->sendError('Approval Status not found');
        }

        return $this->sendResponse($approvalStatus->toArray(), 'Approval Status retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateApprovalStatusAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/approvalStatuses/{id}",
     *      summary="Update the specified ApprovalStatus in storage",
     *      tags={"ApprovalStatus"},
     *      description="Update ApprovalStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of ApprovalStatus",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="ApprovalStatus that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/ApprovalStatus")
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
     *                  ref="#/definitions/ApprovalStatus"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateApprovalStatusAPIRequest $request)
    {
        $input = $request->all();

        /** @var ApprovalStatus $approvalStatus */
        $approvalStatus = $this->approvalStatusRepository->find($id);

        if (empty($approvalStatus)) {
            return $this->sendError('Approval Status not found');
        }

        $approvalStatus = $this->approvalStatusRepository->update($input, $id);

        return $this->sendResponse($approvalStatus->toArray(), 'ApprovalStatus updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/approvalStatuses/{id}",
     *      summary="Remove the specified ApprovalStatus from storage",
     *      tags={"ApprovalStatus"},
     *      description="Delete ApprovalStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of ApprovalStatus",
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
        /** @var ApprovalStatus $approvalStatus */
        $approvalStatus = $this->approvalStatusRepository->find($id);

        if (empty($approvalStatus)) {
            return $this->sendError('Approval Status not found');
        }

        $approvalStatus->delete();

        return $this->sendResponse([], 'Approval Status deleted successfully');
    }
}
