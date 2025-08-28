<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateCityUserAPIRequest;
use App\Http\Requests\API\UpdateCityUserAPIRequest;
use App\Models\CityUser;
use App\Repositories\CityUserRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class CityUserController
 * @package App\Http\Controllers\API
 */

class CityUserAPIController extends AppBaseController
{
    /** @var  CityUserRepository */
    private $cityUserRepository;

    public function __construct(CityUserRepository $cityUserRepo)
    {
        $this->cityUserRepository = $cityUserRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/cityUsers",
     *      summary="Get a listing of the CityUsers.",
     *      tags={"CityUser"},
     *      description="Get all CityUsers",
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
     *                  @SWG\Items(ref="#/definitions/CityUser")
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
        $this->cityUserRepository->pushCriteria(new RequestCriteria($request));
        $this->cityUserRepository->pushCriteria(new LimitOffsetCriteria($request));
        $cityUsers = $this->cityUserRepository->all();

        return $this->sendResponse($cityUsers->toArray(), 'City Users retrieved successfully');
    }

    /**
     * @param CreateCityUserAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/cityUsers",
     *      summary="Store a newly created CityUser in storage",
     *      tags={"CityUser"},
     *      description="Store CityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="CityUser that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/CityUser")
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
     *                  ref="#/definitions/CityUser"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateCityUserAPIRequest $request)
    {
        $input = $request->all();

        $cityUser = $this->cityUserRepository->create($input);

        return $this->sendResponse($cityUser->toArray(), 'City User saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/cityUsers/{id}",
     *      summary="Display the specified CityUser",
     *      tags={"CityUser"},
     *      description="Get CityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of CityUser",
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
     *                  ref="#/definitions/CityUser"
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
        /** @var CityUser $cityUser */
        $cityUser = $this->cityUserRepository->find($id);

        if (empty($cityUser)) {
            return $this->sendError('City User not found');
        }

        return $this->sendResponse($cityUser->toArray(), 'City User retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateCityUserAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/cityUsers/{id}",
     *      summary="Update the specified CityUser in storage",
     *      tags={"CityUser"},
     *      description="Update CityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of CityUser",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="CityUser that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/CityUser")
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
     *                  ref="#/definitions/CityUser"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateCityUserAPIRequest $request)
    {
        $input = $request->all();

        /** @var CityUser $cityUser */
        $cityUser = $this->cityUserRepository->find($id);

        if (empty($cityUser)) {
            return $this->sendError('City User not found');
        }

        $cityUser = $this->cityUserRepository->update($input, $id);

        return $this->sendResponse($cityUser->toArray(), 'CityUser updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/cityUsers/{id}",
     *      summary="Remove the specified CityUser from storage",
     *      tags={"CityUser"},
     *      description="Delete CityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of CityUser",
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
        /** @var CityUser $cityUser */
        $cityUser = $this->cityUserRepository->find($id);

        if (empty($cityUser)) {
            return $this->sendError('City User not found');
        }

        $cityUser->delete();

        return $this->sendResponse($cityUser->toArray(), 'City User deleted successfully');
    }
}
