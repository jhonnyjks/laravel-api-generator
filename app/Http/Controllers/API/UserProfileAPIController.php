<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateUserProfileAPIRequest;
use App\Http\Requests\API\UpdateUserProfileAPIRequest;
use App\Models\UserProfile;
use App\Repositories\UserProfileRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class UserProfileController
 * @package App\Http\Controllers\API
 */

class UserProfileAPIController extends AppBaseController
{
    /** @var  UserProfileRepository */
    private $userProfileRepository;

    public function __construct(UserProfileRepository $userProfileRepo)
    {
        $this->userProfileRepository = $userProfileRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/userProfiles",
     *      summary="Get a listing of the UserProfiles.",
     *      tags={"UserProfile"},
     *      description="Get all UserProfiles",
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
     *                  @SWG\Items(ref="#/definitions/UserProfile")
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
        $this->userProfileRepository->pushCriteria(new RequestCriteria($request));
        $this->userProfileRepository->pushCriteria(new LimitOffsetCriteria($request));
        $userProfiles = $this->userProfileRepository->all();


        return $this->sendResponse($userProfiles->toArray(), 'User Profiles retrieved successfully');
    }

    /**
     * @param CreateUserProfileAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/userProfiles",
     *      summary="Store a newly created UserProfile in storage",
     *      tags={"UserProfile"},
     *      description="Store UserProfile",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="UserProfile that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/UserProfile")
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
     *                  ref="#/definitions/UserProfile"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateUserProfileAPIRequest $request)
    {
        $input = $request->all();

        $userProfile = $this->userProfileRepository->create($input);

        return $this->sendResponse($userProfile->toArray(), 'User Profile saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/userProfiles/{id}",
     *      summary="Display the specified UserProfile",
     *      tags={"UserProfile"},
     *      description="Get UserProfile",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of UserProfile",
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
     *                  ref="#/definitions/UserProfile"
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
        /** @var UserProfile $userProfile */
        $userProfile = $this->userProfileRepository->find($id);

        if (empty($userProfile)) {
            return $this->sendError('User Profile not found');
        }

        return $this->sendResponse($userProfile->toArray(), 'User Profile retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateUserProfileAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/userProfiles/{id}",
     *      summary="Update the specified UserProfile in storage",
     *      tags={"UserProfile"},
     *      description="Update UserProfile",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of UserProfile",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="UserProfile that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/UserProfile")
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
     *                  ref="#/definitions/UserProfile"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateUserProfileAPIRequest $request)
    {
        $input = $request->all();

        /** @var UserProfile $userProfile */
        $userProfile = $this->userProfileRepository->find($id);

        if (empty($userProfile)) {
            return $this->sendError('User Profile not found');
        }

        $userProfile = $this->userProfileRepository->update($input, $id);

        return $this->sendResponse($userProfile->toArray(), 'UserProfile updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/userProfiles/{id}",
     *      summary="Remove the specified UserProfile from storage",
     *      tags={"UserProfile"},
     *      description="Delete UserProfile",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of UserProfile",
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
        /** @var UserProfile $userProfile */
        $userProfile = $this->userProfileRepository->find($id);

        if (empty($userProfile)) {
            return $this->sendError('User Profile not found');
        }

        $userProfile->delete();

        return $this->sendResponse([],'User Profile deleted successfully');
    }
}
