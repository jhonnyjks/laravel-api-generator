<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateEntityAPIRequest;
use App\Http\Requests\API\UpdateEntityAPIRequest;
use App\Models\Entity;
use App\Repositories\EntityRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class EntityController
 * @package App\Http\Controllers\API
 */

class EntityAPIController extends AppBaseController
{
    /** @var  EntityRepository */
    private $entityRepository;

    public function __construct(EntityRepository $entityRepo)
    {
        $this->entityRepository = $entityRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/entities",
     *      summary="Get a listing of the Entities.",
     *      tags={"Entity"},
     *      description="Get all Entities",
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
     *                  @SWG\Items(ref="#/definitions/Entity")
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
        $this->entityRepository->pushCriteria(new RequestCriteria($request));
        $this->entityRepository->pushCriteria(new LimitOffsetCriteria($request));
        $entities = $this->entityRepository->paginate(50);


        return $this->sendResponse($entities->toArray(), 'Entities retrieved successfully');
    }

    /**
     * @param CreateEntityAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/entities",
     *      summary="Store a newly created Entity in storage",
     *      tags={"Entity"},
     *      description="Store Entity",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Entity that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Entity")
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
     *                  ref="#/definitions/Entity"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateEntityAPIRequest $request)
    {
        $input = $request->all();

        $entity = $this->entityRepository->create($input);

        return $this->sendResponse($entity->toArray(), 'Entity saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/entities/{id}",
     *      summary="Display the specified Entity",
     *      tags={"Entity"},
     *      description="Get Entity",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Entity",
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
     *                  ref="#/definitions/Entity"
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
        /** @var Entity $entity */
        $entity = $this->entityRepository->find($id);

        if (empty($entity)) {
            return $this->sendError('Entity not found');
        }

        return $this->sendResponse($entity->toArray(), 'Entity retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateEntityAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/entities/{id}",
     *      summary="Update the specified Entity in storage",
     *      tags={"Entity"},
     *      description="Update Entity",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Entity",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Entity that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Entity")
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
     *                  ref="#/definitions/Entity"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateEntityAPIRequest $request)
    {
        $input = $request->all();

        /** @var Entity $entity */
        $entity = $this->entityRepository->find($id);

        if (empty($entity)) {
            return $this->sendError('Entity not found');
        }

        $entity = $this->entityRepository->update($input, $id);

        return $this->sendResponse($entity->toArray(), 'Entity updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/entities/{id}",
     *      summary="Remove the specified Entity from storage",
     *      tags={"Entity"},
     *      description="Delete Entity",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Entity",
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
        /** @var Entity $entity */
        $entity = $this->entityRepository->find($id);

        if (empty($entity)) {
            return $this->sendError('Entity not found');
        }

        $entity->delete();

        return $this->sendResponse([], 'Entity deleted successfully');
    }
}
