<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateCityStatusAPIRequest;
use App\Http\Requests\API\UpdateCityStatusAPIRequest;
use App\Models\CityStatus;
use App\Repositories\CityStatusRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class CityStatusController
 * @package App\Http\Controllers\API
 */

class CityStatusAPIController extends AppBaseController
{
    /** @var  CityStatusRepository */
    private $cityStatusRepository;

    public function __construct(CityStatusRepository $cityStatusRepo)
    {
        $this->cityStatusRepository = $cityStatusRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/cityStatuses",
     *      summary="Get a listing of the CityStatuses.",
     *      tags={"CityStatus"},
     *      description="Get all CityStatuses",
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
     *                  @SWG\Items(ref="#/definitions/CityStatus")
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
        $this->cityStatusRepository->pushCriteria(new RequestCriteria($request));
        $this->cityStatusRepository->pushCriteria(new LimitOffsetCriteria($request));
        $cityStatuses = $this->cityStatusRepository->all();


        return $this->sendResponse($cityStatuses->toArray(), 'City Statuses retrieved successfully');
    }

    /**
     * @param CreateCityStatusAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/cityStatuses",
     *      summary="Store a newly created CityStatus in storage",
     *      tags={"CityStatus"},
     *      description="Store CityStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="CityStatus that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/CityStatus")
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
     *                  ref="#/definitions/CityStatus"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateCityStatusAPIRequest $request)
    {
        $input = $request->all();

        $cityStatus = $this->cityStatusRepository->create($input);

        return $this->sendResponse($cityStatus->toArray(), 'City Status saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/cityStatuses/{id}",
     *      summary="Display the specified CityStatus",
     *      tags={"CityStatus"},
     *      description="Get CityStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of CityStatus",
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
     *                  ref="#/definitions/CityStatus"
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
        /** @var CityStatus $cityStatus */
        $cityStatus = $this->cityStatusRepository->find($id);

        if (empty($cityStatus)) {
            return $this->sendError('City Status not found');
        }

        return $this->sendResponse($cityStatus->toArray(), 'City Status retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateCityStatusAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/cityStatuses/{id}",
     *      summary="Update the specified CityStatus in storage",
     *      tags={"CityStatus"},
     *      description="Update CityStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of CityStatus",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="CityStatus that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/CityStatus")
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
     *                  ref="#/definitions/CityStatus"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateCityStatusAPIRequest $request)
    {
        $input = $request->all();

        /** @var CityStatus $cityStatus */
        $cityStatus = $this->cityStatusRepository->find($id);

        if (empty($cityStatus)) {
            return $this->sendError('City Status not found');
        }

        $cityStatus = $this->cityStatusRepository->update($input, $id);

        return $this->sendResponse($cityStatus->toArray(), 'CityStatus updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/cityStatuses/{id}",
     *      summary="Remove the specified CityStatus from storage",
     *      tags={"CityStatus"},
     *      description="Delete CityStatus",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of CityStatus",
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
        /** @var CityStatus $cityStatus */
        $cityStatus = $this->cityStatusRepository->find($id);

        if (empty($cityStatus)) {
            return $this->sendError('City Status not found');
        }

        $cityStatus->delete();

        return $this->sendSuccess('City Status deleted successfully');
    }
}
