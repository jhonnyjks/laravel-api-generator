<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateTaxpayersAPIRequest;
use App\Http\Requests\API\UpdateTaxpayersAPIRequest;
use App\Models\Taxpayers;
use App\Repositories\TaxpayersRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use Response;

/**
 * Class TaxpayersController
 * @package App\Http\Controllers\API
 */

class TaxpayersAPIController extends AppBaseController
{
    /** @var  TaxpayersRepository */
    private $taxpayersRepository;

    public function __construct(TaxpayersRepository $taxpayersRepo)
    {
        $this->taxpayersRepository = $taxpayersRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/taxpayers",
     *      summary="Get a listing of the Taxpayers.",
     *      tags={"Taxpayers"},
     *      description="Get all Taxpayers",
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
     *                  @SWG\Items(ref="#/definitions/Taxpayers")
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
        $taxpayers = $this->taxpayersRepository->all(
            $request->except(['skip', 'limit']),
            $request->get('skip'),
            $request->get('limit')
        );

        return $this->sendResponse($taxpayers->toArray(), 'Taxpayers retrieved successfully');
    }

    /**
     * @param CreateTaxpayersAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/taxpayers",
     *      summary="Store a newly created Taxpayers in storage",
     *      tags={"Taxpayers"},
     *      description="Store Taxpayers",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Taxpayers that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Taxpayers")
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
     *                  ref="#/definitions/Taxpayers"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateTaxpayersAPIRequest $request)
    {
        $input = $request->all();

        $taxpayers = $this->taxpayersRepository->create($input);

        return $this->sendResponse($taxpayers->toArray(), 'Taxpayers saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/taxpayers/{id}",
     *      summary="Display the specified Taxpayers",
     *      tags={"Taxpayers"},
     *      description="Get Taxpayers",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Taxpayers",
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
     *                  ref="#/definitions/Taxpayers"
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
        /** @var Taxpayers $taxpayers */
        $taxpayers = $this->taxpayersRepository->find($id);

        if (empty($taxpayers)) {
            return $this->sendError('Taxpayers not found');
        }

        return $this->sendResponse($taxpayers->toArray(), 'Taxpayers retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateTaxpayersAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/taxpayers/{id}",
     *      summary="Update the specified Taxpayers in storage",
     *      tags={"Taxpayers"},
     *      description="Update Taxpayers",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Taxpayers",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="Taxpayers that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/Taxpayers")
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
     *                  ref="#/definitions/Taxpayers"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateTaxpayersAPIRequest $request)
    {
        $input = $request->all();

        /** @var Taxpayers $taxpayers */
        $taxpayers = $this->taxpayersRepository->find($id);

        if (empty($taxpayers)) {
            return $this->sendError('Taxpayers not found');
        }

        $taxpayers = $this->taxpayersRepository->update($input, $id);

        return $this->sendResponse($taxpayers->toArray(), 'Taxpayers updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/taxpayers/{id}",
     *      summary="Remove the specified Taxpayers from storage",
     *      tags={"Taxpayers"},
     *      description="Delete Taxpayers",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of Taxpayers",
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
        /** @var Taxpayers $taxpayers */
        $taxpayers = $this->taxpayersRepository->find($id);

        if (empty($taxpayers)) {
            return $this->sendError('Taxpayers not found');
        }

        $taxpayers->delete();

        return $this->sendSuccess('Taxpayers deleted successfully');
    }
}
