<?php

namespace App\Http\Controllers\API;

use App\Repositories\UserRepository;
use App\Repositories\UserProfileRepository;
use App\Repositories\ProfileRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;

/**
 * Class BiddingController
 * @package App\Http\Controllers\API
 */

class NotificationAPIController extends AppBaseController
{
    /** @var  UserProcessRepository */
    private $userRepository;
    /** @var  UserProfileRepository */
    private $userProfileRepository;
    /** @var  ProfileRepository */
    private $profileRepository;

    public function __construct(UserRepository $userRepo, UserProfileRepository $userProfileRepo, ProfileRepository $profileRepo)
    {
        $this->userRepository = $userRepo;
        $this->userProfileRepository = $userProfileRepo;
        $this->profileRepository = $profileRepo;
    }


    public function index(Request $request)
    {

        return response()->json([
            'success' => true,
            'message' => 'Notificações Obtidas com sucesso!',
            'data'    => []
        ]);
    }
}
