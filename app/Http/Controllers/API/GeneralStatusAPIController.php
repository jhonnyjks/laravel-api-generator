<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateGeneralStatusAPIRequest;
use App\Http\Requests\API\UpdateGeneralStatusAPIRequest;
use App\Models\GeneralStatus;
use App\Repositories\GeneralStatusRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class GeneralStatusController
 * @package App\Http\Controllers\API
 */

class GeneralStatusAPIController extends AppBaseController
{
    /** @var  GeneralStatusRepository */
    private $generalStatusRepository;

    public function __construct(GeneralStatusRepository $generalStatusRepo)
    {
        $this->generalStatusRepository = $generalStatusRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/generalStatuses",
     *      summary="Get a listing of the GeneralStatuses.",
     *      tags={"GeneralStatus"},
     *      description="Get all GeneralStatuses",
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
     *                  @SWG\Items(ref="#/definitions/GeneralStatus")
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
        $this->generalStatusRepository->pushCriteria(new RequestCriteria($request));
        $this->generalStatusRepository->pushCriteria(new LimitOffsetCriteria($request));
        $generalStatuses = $this->generalStatusRepository->all();

        return $this->sendResponse($generalStatuses->toArray(), 'General Statuses retrieved successfully');
    }

    /**
     * @param CreateGeneralStatusAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/generalStatuses",
     *      summary="Store a newly created GeneralStatus in storage",
     *      tags={"GeneralStatus"},
     *      description="Store GeneralStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="GeneralStatus that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/GeneralStatus")
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
     *                  ref="#/definitions/GeneralStatus"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateGeneralStatusAPIRequest $request)
    {
        $input = $request->all();

        $generalStatus = $this->generalStatusRepository->create($input);

        return $this->sendResponse($generalStatus->toArray(), 'General Status saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/generalStatuses/{id}",
     *      summary="Display the specified GeneralStatus",
     *      tags={"GeneralStatus"},
     *      description="Get GeneralStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of GeneralStatus",
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
     *                  ref="#/definitions/GeneralStatus"
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
        /** @var GeneralStatus $generalStatus */
        $generalStatus = $this->generalStatusRepository->find($id);

        if (empty($generalStatus)) {
            return $this->sendError('General Status not found');
        }

        return $this->sendResponse($generalStatus->toArray(), 'General Status retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateGeneralStatusAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/generalStatuses/{id}",
     *      summary="Update the specified GeneralStatus in storage",
     *      tags={"GeneralStatus"},
     *      description="Update GeneralStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of GeneralStatus",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="GeneralStatus that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/GeneralStatus")
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
     *                  ref="#/definitions/GeneralStatus"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateGeneralStatusAPIRequest $request)
    {
        $input = $request->all();

        /** @var GeneralStatus $generalStatus */
        $generalStatus = $this->generalStatusRepository->find($id);

        if (empty($generalStatus)) {
            return $this->sendError('General Status not found');
        }

        $generalStatus = $this->generalStatusRepository->update($input, $id);

        return $this->sendResponse($generalStatus->toArray(), 'GeneralStatus updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/generalStatuses/{id}",
     *      summary="Remove the specified GeneralStatus from storage",
     *      tags={"GeneralStatus"},
     *      description="Delete GeneralStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of GeneralStatus",
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
        /** @var GeneralStatus $generalStatus */
        $generalStatus = $this->generalStatusRepository->find($id);

        if (empty($generalStatus)) {
            return $this->sendError('General Status not found');
        }

        $generalStatus->delete();

        return $this->sendResponse([],'General Status deleted successfully');
    }
}
