<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateEntityTypeAPIRequest;
use App\Http\Requests\API\UpdateEntityTypeAPIRequest;
use App\Models\EntityType;
use App\Repositories\EntityTypeRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class EntityTypeController
 * @package App\Http\Controllers\API
 */

class EntityTypeAPIController extends AppBaseController
{
    /** @var  EntityTypeRepository */
    private $entityTypeRepository;

    public function __construct(EntityTypeRepository $entityTypeRepo)
    {
        $this->entityTypeRepository = $entityTypeRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/entityTypes",
     *      summary="Get a listing of the EntityTypes.",
     *      tags={"EntityType"},
     *      description="Get all EntityTypes",
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
     *                  @SWG\Items(ref="#/definitions/EntityType")
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
        $this->entityTypeRepository->pushCriteria(new RequestCriteria($request));
        $this->entityTypeRepository->pushCriteria(new LimitOffsetCriteria($request));
        $entityTypes = $this->entityTypeRepository->paginate(50);


        return $this->sendResponse($entityTypes->toArray(), 'Entity Types retrieved successfully');
    }

    /**
     * @param CreateEntityTypeAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/entityTypes",
     *      summary="Store a newly created EntityType in storage",
     *      tags={"EntityType"},
     *      description="Store EntityType",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="EntityType that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/EntityType")
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
     *                  ref="#/definitions/EntityType"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateEntityTypeAPIRequest $request)
    {
        $input = $request->all();

        $entityType = $this->entityTypeRepository->create($input);

        return $this->sendResponse($entityType->toArray(), 'Entity Type saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/entityTypes/{id}",
     *      summary="Display the specified EntityType",
     *      tags={"EntityType"},
     *      description="Get EntityType",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of EntityType",
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
     *                  ref="#/definitions/EntityType"
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
        /** @var EntityType $entityType */
        $entityType = $this->entityTypeRepository->find($id);

        if (empty($entityType)) {
            return $this->sendError('Entity Type not found');
        }

        return $this->sendResponse($entityType->toArray(), 'Entity Type retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateEntityTypeAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/entityTypes/{id}",
     *      summary="Update the specified EntityType in storage",
     *      tags={"EntityType"},
     *      description="Update EntityType",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of EntityType",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="EntityType that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/EntityType")
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
     *                  ref="#/definitions/EntityType"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateEntityTypeAPIRequest $request)
    {
        $input = $request->all();

        /** @var EntityType $entityType */
        $entityType = $this->entityTypeRepository->find($id);

        if (empty($entityType)) {
            return $this->sendError('Entity Type not found');
        }

        $entityType = $this->entityTypeRepository->update($input, $id);

        return $this->sendResponse($entityType->toArray(), 'EntityType updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/entityTypes/{id}",
     *      summary="Remove the specified EntityType from storage",
     *      tags={"EntityType"},
     *      description="Delete EntityType",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of EntityType",
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
        /** @var EntityType $entityType */
        $entityType = $this->entityTypeRepository->find($id);

        if (empty($entityType)) {
            return $this->sendError('Entity Type not found');
        }

        $entityType->delete();

        return $this->sendResponse([], 'Entity Type deleted successfully');
    }
}
