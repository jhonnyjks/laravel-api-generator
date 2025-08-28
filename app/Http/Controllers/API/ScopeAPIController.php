<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateScopeAPIRequest;
use App\Http\Requests\API\UpdateScopeAPIRequest;
use App\Models\Scope;
use App\Repositories\ScopeRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use App\Http\Resources\ScopeResource;
use Response;

/**
 * Class ScopeController
 * @package App\Http\Controllers\API
 */

class ScopeAPIController extends AppBaseController
{
    /** @var  ScopeRepository */
    private $scopeRepository;

    public function __construct(ScopeRepository $scopeRepo)
    {
        $this->scopeRepository = $scopeRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @OA\Get(
     *      path="/scopes",
     *      summary="getScopeList",
     *      tags={"Scope"},
     *      description="Get all Scopes",
     *      @OA\Response(
     *          response=200,
     *          description="successful operation",
     *          @OA\Schema(
     *              type="object",
     *              @OA\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @OA\Property(
     *                  property="data",
     *                  type="array",
     *                  @OA\Items(ref="#/definitions/Scope")
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function index(Request $request)
    {
        $scopes = $this->scopeRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse(ScopeResource::collection($scopes), 'Scopes retrieved successfully');
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @OA\Post(
     *      path="/scopes",
     *      summary="createScope",
     *      tags={"Scope"},
     *      description="Create Scope",
     *      @OA\RequestBody(
     *        required=true,
     *        @OA\MediaType(
     *            mediaType="application/x-www-form-urlencoded",
     *            @OA\Schema(
     *                type="object",
     *                required={""},
     *                @OA\Property(
     *                    property="name",
     *                    description="desc",
     *                    type="string"
     *                )
     *            )
     *        )
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="successful operation",
     *          @OA\Schema(
     *              type="object",
     *              @OA\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/definitions/Scope"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateScopeAPIRequest $request)
    {
        $input = $request->all();

        $scope = $this->scopeRepository->create($input);

        return $this->sendResponse(new ScopeResource($scope), 'Scope saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @OA\Get(
     *      path="/scopes/{id}",
     *      summary="getScopeItem",
     *      tags={"Scope"},
     *      description="Get Scope",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of Scope",
     *           @OA\Schema(
     *             type="integer"
     *          ),
     *          required=true,
     *          in="path"
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="successful operation",
     *          @OA\Schema(
     *              type="object",
     *              @OA\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/definitions/Scope"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function show($id)
    {
        /** @var Scope $scope */
        $scope = $this->scopeRepository->find($id);

        if (empty($scope)) {
            return $this->sendError('Scope not found');
        }

        return $this->sendResponse(new ScopeResource($scope), 'Scope retrieved successfully');
    }

    /**
     * @param int $id
     * @param Request $request
     * @return Response
     *
     * @OA\Put(
     *      path="/scopes/{id}",
     *      summary="updateScope",
     *      tags={"Scope"},
     *      description="Update Scope",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of Scope",
     *           @OA\Schema(
     *             type="integer"
     *          ),
     *          required=true,
     *          in="path"
     *      ),
     *      @OA\RequestBody(
     *        required=true,
     *        @OA\MediaType(
     *            mediaType="application/x-www-form-urlencoded",
     *            @OA\Schema(
     *                type="object",
     *                required={""},
     *                @OA\Property(
     *                    property="name",
     *                    description="desc",
     *                    type="string"
     *                )
     *            )
     *        )
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="successful operation",
     *          @OA\Schema(
     *              type="object",
     *              @OA\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/definitions/Scope"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateScopeAPIRequest $request)
    {
        $input = $request->all();

        /** @var Scope $scope */
        $scope = $this->scopeRepository->find($id);

        if (empty($scope)) {
            return $this->sendError('Scope not found');
        }

        $scope = $this->scopeRepository->update($input, $id);

        return $this->sendResponse(new ScopeResource($scope), 'Scope updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @OA\Delete(
     *      path="/scopes/{id}",
     *      summary="deleteScope",
     *      tags={"Scope"},
     *      description="Delete Scope",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of Scope",
     *           @OA\Schema(
     *             type="integer"
     *          ),
     *          required=true,
     *          in="path"
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="successful operation",
     *          @OA\Schema(
     *              type="object",
     *              @OA\Property(
     *                  property="success",
     *                  type="boolean"
     *              ),
     *              @OA\Property(
     *                  property="data",
     *                  type="string"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function destroy($id)
    {
        /** @var Scope $scope */
        $scope = $this->scopeRepository->find($id);

        if (empty($scope)) {
            return $this->sendError('Scope not found');
        }

        $scope->delete();

        return $this->sendSuccess('Scope deleted successfully');
    }
}
