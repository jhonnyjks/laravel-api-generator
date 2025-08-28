<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateUserProfileScopeAPIRequest;
use App\Http\Requests\API\UpdateUserProfileScopeAPIRequest;
use App\Models\UserProfileScope;
use App\Repositories\UserProfileScopeRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use App\Http\Resources\UserProfileScopeResource;
use Response;

/**
 * Class UserProfileScopeController
 * @package App\Http\Controllers\API
 */

class UserProfileScopeAPIController extends AppBaseController
{
    /** @var  UserProfileScopeRepository */
    private $userProfileScopeRepository;

    public function __construct(UserProfileScopeRepository $userProfileScopeRepo)
    {
        $this->userProfileScopeRepository = $userProfileScopeRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @OA\Get(
     *      path="/userProfileScopes",
     *      summary="getUserProfileScopeList",
     *      tags={"UserProfileScope"},
     *      description="Get all UserProfileScopes",
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
     *                  @OA\Items(ref="#/definitions/UserProfileScope")
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
        $userProfileScopes = $this->userProfileScopeRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse(UserProfileScopeResource::collection($userProfileScopes), 'User Profile Scopes retrieved successfully');
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @OA\Post(
     *      path="/userProfileScopes",
     *      summary="createUserProfileScope",
     *      tags={"UserProfileScope"},
     *      description="Create UserProfileScope",
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
     *                  ref="#/definitions/UserProfileScope"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateUserProfileScopeAPIRequest $request)
    {
        $input = $request->all();

        $userProfileScope = $this->userProfileScopeRepository->create($input);

        return $this->sendResponse($userProfileScope->toArray(), 'User Profile Scope saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @OA\Get(
     *      path="/userProfileScopes/{id}",
     *      summary="getUserProfileScopeItem",
     *      tags={"UserProfileScope"},
     *      description="Get UserProfileScope",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of UserProfileScope",
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
     *                  ref="#/definitions/UserProfileScope"
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
        /** @var UserProfileScope $userProfileScope */
        $userProfileScope = $this->userProfileScopeRepository->find($id);

        if (empty($userProfileScope)) {
            return $this->sendError('User Profile Scope not found');
        }

        return $this->sendResponse(new UserProfileScopeResource($userProfileScope), 'User Profile Scope retrieved successfully');
    }

    /**
     * @param int $id
     * @param Request $request
     * @return Response
     *
     * @OA\Put(
     *      path="/userProfileScopes/{id}",
     *      summary="updateUserProfileScope",
     *      tags={"UserProfileScope"},
     *      description="Update UserProfileScope",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of UserProfileScope",
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
     *                  ref="#/definitions/UserProfileScope"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateUserProfileScopeAPIRequest $request)
    {
        $input = $request->all();

        /** @var UserProfileScope $userProfileScope */
        $userProfileScope = $this->userProfileScopeRepository->find($id);

        if (empty($userProfileScope)) {
            return $this->sendError('User Profile Scope not found');
        }

        $userProfileScope = $this->userProfileScopeRepository->update($input, $id);

        return $this->sendResponse($userProfileScope->toArray(), 'UserProfileScope updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @OA\Delete(
     *      path="/userProfileScopes/{id}",
     *      summary="deleteUserProfileScope",
     *      tags={"UserProfileScope"},
     *      description="Delete UserProfileScope",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of UserProfileScope",
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
        /** @var UserProfileScope $userProfileScope */
        $userProfileScope = $this->userProfileScopeRepository->find($id);

        if (empty($userProfileScope)) {
            return $this->sendError('User Profile Scope not found');
        }

        $userProfileScope->delete();

        return $this->sendSuccess('User Profile Scope deleted successfully');
    }
}
