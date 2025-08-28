<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateUserPositionAPIRequest;
use App\Http\Requests\API\UpdateUserPositionAPIRequest;
use App\Models\UserPosition;
use App\Repositories\UserPositionRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use Response;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;

/**
 * Class UserPositionController
 * @package App\Http\Controllers\API
 */

class UserPositionAPIController extends AppBaseController
{
    /** @var  UserPositionRepository */
    private $userPositionRepository;

    public function __construct(UserPositionRepository $userPositionRepo)
    {
        $this->userPositionRepository = $userPositionRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/userPositions",
     *      summary="Get a listing of the UserPositions.",
     *      tags={"UserPosition"},
     *      description="Get all UserPositions",
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
     *                  @SWG\Items(ref="#/definitions/UserPosition")
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
        $this->userPositionRepository->pushCriteria(new RequestCriteria($request));
        $this->userPositionRepository->pushCriteria(new LimitOffsetCriteria($request));
        $userPositions = $this->userPositionRepository->all();

        return $this->sendResponse($userPositions->toArray(), 'User Positions retrieved successfully');
    }

    /**
     * @param CreateUserPositionAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/userPositions",
     *      summary="Store a newly created UserPosition in storage",
     *      tags={"UserPosition"},
     *      description="Store UserPosition",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="UserPosition that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/UserPosition")
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
     *                  ref="#/definitions/UserPosition"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateUserPositionAPIRequest $request)
    {
        $input = $request->all();

        $userPosition = $this->userPositionRepository->create($input);

        return $this->sendResponse($userPosition->toArray(), 'User Position saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/userPositions/{id}",
     *      summary="Display the specified UserPosition",
     *      tags={"UserPosition"},
     *      description="Get UserPosition",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of UserPosition",
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
     *                  ref="#/definitions/UserPosition"
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
        /** @var UserPosition $userPosition */
        $userPosition = $this->userPositionRepository->find($id);

        if (empty($userPosition)) {
            return $this->sendError('User Position not found');
        }

        return $this->sendResponse($userPosition->toArray(), 'User Position retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateUserPositionAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/userPositions/{id}",
     *      summary="Update the specified UserPosition in storage",
     *      tags={"UserPosition"},
     *      description="Update UserPosition",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of UserPosition",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="UserPosition that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/UserPosition")
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
     *                  ref="#/definitions/UserPosition"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateUserPositionAPIRequest $request)
    {
        $input = $request->all();

        /** @var UserPosition $userPosition */
        $userPosition = $this->userPositionRepository->find($id);

        if (empty($userPosition)) {
            return $this->sendError('User Position not found');
        }

        $userPosition = $this->userPositionRepository->update($input, $id);

        return $this->sendResponse($userPosition->toArray(), 'UserPosition updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/userPositions/{id}",
     *      summary="Remove the specified UserPosition from storage",
     *      tags={"UserPosition"},
     *      description="Delete UserPosition",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of UserPosition",
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
        /** @var UserPosition $userPosition */
        $userPosition = $this->userPositionRepository->find($id);

        if (empty($userPosition)) {
            return $this->sendError('User Position not found');
        }

        $userPosition->delete();

        return $this->sendResponse([], 'User Position deleted successfully');
    }
}
