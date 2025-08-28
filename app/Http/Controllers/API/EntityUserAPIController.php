<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateEntityUserAPIRequest;
use App\Http\Requests\API\UpdateEntityUserAPIRequest;
use App\Models\EntityUser;
use App\Repositories\EntityUserRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class EntityUserController
 * @package App\Http\Controllers\API
 */

class EntityUserAPIController extends AppBaseController
{
    /** @var  EntityUserRepository */
    private $entityUserRepository;

    public function __construct(EntityUserRepository $entityUserRepo)
    {
        $this->entityUserRepository = $entityUserRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/entityUsers",
     *      summary="Get a listing of the EntityUsers.",
     *      tags={"EntityUser"},
     *      description="Get all EntityUsers",
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
     *                  @SWG\Items(ref="#/definitions/EntityUser")
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
        $this->entityUserRepository->pushCriteria(new RequestCriteria($request));
        $this->entityUserRepository->pushCriteria(new LimitOffsetCriteria($request));
        $entityUsers = $this->entityUserRepository->all();


        return $this->sendResponse($entityUsers->toArray(), 'Entity Users retrieved successfully');
    }

    /**
     * @param CreateEntityUserAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/entityUsers",
     *      summary="Store a newly created EntityUser in storage",
     *      tags={"EntityUser"},
     *      description="Store EntityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="EntityUser that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/EntityUser")
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
     *                  ref="#/definitions/EntityUser"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateEntityUserAPIRequest $request)
    {
        $input = $request->all();

        $entityUser = $this->entityUserRepository->create($input);

        return $this->sendResponse($entityUser->toArray(), 'Entity User saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/entityUsers/{id}",
     *      summary="Display the specified EntityUser",
     *      tags={"EntityUser"},
     *      description="Get EntityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of EntityUser",
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
     *                  ref="#/definitions/EntityUser"
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
        /** @var EntityUser $entityUser */
        $entityUser = $this->entityUserRepository->find($id);

        if (empty($entityUser)) {
            return $this->sendError('Entity User not found');
        }

        return $this->sendResponse($entityUser->toArray(), 'Entity User retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateEntityUserAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/entityUsers/{id}",
     *      summary="Update the specified EntityUser in storage",
     *      tags={"EntityUser"},
     *      description="Update EntityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of EntityUser",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="EntityUser that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/EntityUser")
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
     *                  ref="#/definitions/EntityUser"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateEntityUserAPIRequest $request)
    {
        $input = $request->all();

        /** @var EntityUser $entityUser */
        $entityUser = $this->entityUserRepository->find($id);

        if (empty($entityUser)) {
            return $this->sendError('Entity User not found');
        }

        $entityUser = $this->entityUserRepository->update($input, $id);

        return $this->sendResponse($entityUser->toArray(), 'EntityUser updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/entityUsers/{id}",
     *      summary="Remove the specified EntityUser from storage",
     *      tags={"EntityUser"},
     *      description="Delete EntityUser",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of EntityUser",
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
        /** @var EntityUser $entityUser */
        $entityUser = $this->entityUserRepository->find($id);

        if (empty($entityUser)) {
            return $this->sendError('Entity User not found');
        }

        $entityUser->delete();

        return $this->sendResponse([], 'Entity User deleted successfully');
    }
}
