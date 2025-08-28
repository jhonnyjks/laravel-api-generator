<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateActionAPIRequest;
use App\Http\Requests\API\UpdateActionAPIRequest;
use App\Models\Action;
use App\Repositories\ActionRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class ActionController
 * @package App\Http\Controllers\API
 */

class ActionAPIController extends AppBaseController
{
    /** @var  ActionRepository */
    private $actionRepository;

    public function __construct(ActionRepository $actionRepo)
    {
        $this->actionRepository = $actionRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/actions",
     *      summary="Get a listing of the Actions.",
     *      tags={"Action"},
     *      description="Get all Actions",
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
     *                  @SWG\Items(ref="#/definitions/Action")
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
        $this->actionRepository->pushCriteria(new RequestCriteria($request));
        $this->actionRepository->pushCriteria(new LimitOffsetCriteria($request));
        $actions = $this->actionRepository->all();

        return $this->sendResponse($actions->toArray(), 'Actions retrieved successfully');
    }

    /**
     * @param CreateActionAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/actions",
     *      summary="Store a newly created Action in storage",
     *      tags={"Action"},
     *      description="Store Action",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Action that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Action")
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
     *                  ref="#/definitions/Action"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateActionAPIRequest $request)
    {
        $input = $request->all();

        $actions = $this->actionRepository->create($input);

        return $this->sendResponse($actions->toArray(), 'Action saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/actions/{id}",
     *      summary="Display the specified Action",
     *      tags={"Action"},
     *      description="Get Action",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Action",
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
     *                  ref="#/definitions/Action"
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
        /** @var Action $action */
        $action = $this->actionRepository->find($id);

        if (empty($action)) {
            return $this->sendError('Action not found');
        }

        return $this->sendResponse($action->toArray(), 'Action retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateActionAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/actions/{id}",
     *      summary="Update the specified Action in storage",
     *      tags={"Action"},
     *      description="Update Action",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Action",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Action that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Action")
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
     *                  ref="#/definitions/Action"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateActionAPIRequest $request)
    {
        $input = $request->all();

        /** @var Action $action */
        $action = $this->actionRepository->find($id);

        if (empty($action)) {
            return $this->sendError('Action not found');
        }

        $action = $this->actionRepository->update($input, $id);

        return $this->sendResponse($action->toArray(), 'Action updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/actions/{id}",
     *      summary="Remove the specified Action from storage",
     *      tags={"Action"},
     *      description="Delete Action",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Action",
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
        /** @var Action $action */
        $action = $this->actionRepository->find($id);

        if (empty($action)) {
            return $this->sendError('Action not found');
        }

        $action->delete();

        return $this->sendResponse($id, 'Action deleted successfully');
    }
}
// teste de commit
