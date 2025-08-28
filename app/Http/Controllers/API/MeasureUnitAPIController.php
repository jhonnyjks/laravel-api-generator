<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\CreateMeasureUnitAPIRequest;
use App\Http\Requests\API\UpdateMeasureUnitAPIRequest;
use App\Models\MeasureUnit;
use App\Repositories\MeasureUnitRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

/**
 * Class MeasureUnitController
 * @package App\Http\Controllers\API
 */

class MeasureUnitAPIController extends AppBaseController
{
    /** @var  MeasureUnitRepository */
    private $measureUnitRepository;

    public function __construct(MeasureUnitRepository $measureUnitRepo)
    {
        $this->measureUnitRepository = $measureUnitRepo;
    }

    /**
     * @param Request $request
     * @return Response
     *
     * @SWG\Get(
     *      path="/measureUnits",
     *      summary="Get a listing of the MeasureUnits.",
     *      tags={"MeasureUnit"},
     *      description="Get all MeasureUnits",
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
     *                  @SWG\Items(ref="#/definitions/MeasureUnit")
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
        $this->measureUnitRepository->pushCriteria(new RequestCriteria($request));
        $this->measureUnitRepository->pushCriteria(new LimitOffsetCriteria($request));
        $measureUnits = $this->measureUnitRepository->all();

        return $this->sendResponse($measureUnits->toArray(), 'Measure Units retrieved successfully');
    }

    /**
     * @param CreateMeasureUnitAPIRequest $request
     * @return Response
     *
     * @SWG\Post(
     *      path="/measureUnits",
     *      summary="Store a newly created MeasureUnit in storage",
     *      tags={"MeasureUnit"},
     *      description="Store MeasureUnit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="MeasureUnit that should be stored",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/MeasureUnit")
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
     *                  ref="#/definitions/MeasureUnit"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function store(CreateMeasureUnitAPIRequest $request)
    {
        $input = $request->all();

        $measureUnit = $this->measureUnitRepository->create($input);

        return $this->sendResponse($measureUnit->toArray(), 'Measure Unit saved successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Get(
     *      path="/measureUnits/{id}",
     *      summary="Display the specified MeasureUnit",
     *      tags={"MeasureUnit"},
     *      description="Get MeasureUnit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of MeasureUnit",
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
     *                  ref="#/definitions/MeasureUnit"
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
        /** @var MeasureUnit $measureUnit */
        $measureUnit = $this->measureUnitRepository->find($id);

        if (empty($measureUnit)) {
            return $this->sendError('Measure Unit not found');
        }

        return $this->sendResponse($measureUnit->toArray(), 'Measure Unit retrieved successfully');
    }

    /**
     * @param int $id
     * @param UpdateMeasureUnitAPIRequest $request
     * @return Response
     *
     * @SWG\Put(
     *      path="/measureUnits/{id}",
     *      summary="Update the specified MeasureUnit in storage",
     *      tags={"MeasureUnit"},
     *      description="Update MeasureUnit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of MeasureUnit",
     *          type="integer",
     *          required=true,
     *          in="path"
     *      ),
     *      @SWG\Parameter(
     *          name="body",
     *          in="body",
     *          description="MeasureUnit that should be updated",
     *          required=false,
     *          @SWG\Schema(ref="#/definitions/MeasureUnit")
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
     *                  ref="#/definitions/MeasureUnit"
     *              ),
     *              @SWG\Property(
     *                  property="message",
     *                  type="string"
     *              )
     *          )
     *      )
     * )
     */
    public function update($id, UpdateMeasureUnitAPIRequest $request)
    {
        $input = $request->all();

        /** @var MeasureUnit $measureUnit */
        $measureUnit = $this->measureUnitRepository->find($id);

        if (empty($measureUnit)) {
            return $this->sendError('Measure Unit not found');
        }

        $measureUnit = $this->measureUnitRepository->update($input, $id);

        return $this->sendResponse($measureUnit->toArray(), 'MeasureUnit updated successfully');
    }

    /**
     * @param int $id
     * @return Response
     *
     * @SWG\Delete(
     *      path="/measureUnits/{id}",
     *      summary="Remove the specified MeasureUnit from storage",
     *      tags={"MeasureUnit"},
     *      description="Delete MeasureUnit",
     *      produces={"application/json"},
     *      @SWG\Parameter(
     *          name="id",
     *          description="id of MeasureUnit",
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
        /** @var MeasureUnit $measureUnit */
        $measureUnit = $this->measureUnitRepository->find($id);

        if (empty($measureUnit)) {
            return $this->sendError('Measure Unit not found');
        }

        $measureUnit->delete();

        return $this->sendResponse([], 'Measure Unit deleted successfully');
    }
}
