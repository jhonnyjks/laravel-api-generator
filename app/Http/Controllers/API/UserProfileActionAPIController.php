<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateUserProfileActionAPIRequest;
use App\Http\Requests\API\UpdateUserProfileActionAPIRequest;
use App\Models\UserProfileAction;
use App\Repositories\UserProfileActionRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use App\Http\Resources\UserProfileActionResource;
use Response;

/**
 * Class UserProfileActionController
 * @package App\Http\Controllers\API
 */

class UserProfileActionAPIController extends AppBaseController
{
    /** @var  UserProfileActionRepository */
    private $userProfileActionRepository;

    public function __construct(UserProfileActionRepository $userProfileActionRepo)
    {
        $this->userProfileActionRepository = $userProfileActionRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @OA\Get(
     *      path="/userProfileActions",
     *      summary="getUserProfileActionList",
     *      tags={"UserProfileAction"},
     *      description="Get all UserProfileActions",
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
     *                  @OA\Items(ref="#/definitions/UserProfileAction")
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
        $userProfileActions = $this->userProfileActionRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse(UserProfileActionResource::collection($userProfileActions), 'User Profile Actions retrieved successfully');
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @OA\Post(
     *      path="/userProfileActions",
     *      summary="createUserProfileAction",
     *      tags={"UserProfileAction"},
     *      description="Create UserProfileAction",
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
     *                  ref="#/definitions/UserProfileAction"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateUserProfileActionAPIRequest $request)
    {
        $input = $request->all();

        $userProfileAction = $this->userProfileActionRepository->create($input);

        return $this->sendResponse($userProfileAction->toArray(), 'User Profile Action saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @OA\Get(
     *      path="/userProfileActions/{id}",
     *      summary="getUserProfileActionItem",
     *      tags={"UserProfileAction"},
     *      description="Get UserProfileAction",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of UserProfileAction",
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
     *                  ref="#/definitions/UserProfileAction"
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
        /** @var UserProfileAction $userProfileAction */
        $userProfileAction = $this->userProfileActionRepository->find($id);

        if (empty($userProfileAction)) {
            return $this->sendError('User Profile Action not found');
        }

        return $this->sendResponse(new UserProfileActionResource($userProfileAction), 'User Profile Action retrieved successfully');
    }

    /**
     * @param int $id
     * @param Request $request
     * @return Response
     *
     * @OA\Put(
     *      path="/userProfileActions/{id}",
     *      summary="updateUserProfileAction",
     *      tags={"UserProfileAction"},
     *      description="Update UserProfileAction",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of UserProfileAction",
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
     *                  ref="#/definitions/UserProfileAction"
     *              ),
     *              @OA\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateUserProfileActionAPIRequest $request)
    {
        $input = $request->all();

        /** @var UserProfileAction $userProfileAction */
        $userProfileAction = $this->userProfileActionRepository->find($id);

        if (empty($userProfileAction)) {
            return $this->sendError('User Profile Action not found');
        }

        $userProfileAction = $this->userProfileActionRepository->update($input, $id);

        return $this->sendResponse($userProfileAction->toArray(), 'UserProfileAction updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @OA\Delete(
     *      path="/userProfileActions/{id}",
     *      summary="deleteUserProfileAction",
     *      tags={"UserProfileAction"},
     *      description="Delete UserProfileAction",
     *      @OA\Parameter(
     *          name="id",
     *          description="id of UserProfileAction",
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
        /** @var UserProfileAction $userProfileAction */
        $userProfileAction = $this->userProfileActionRepository->find($id);

        if (empty($userProfileAction)) {
            return $this->sendError('User Profile Action not found');
        }

        $userProfileAction->delete();

        return $this->sendSuccess('User Profile Action deleted successfully');
    }
}
