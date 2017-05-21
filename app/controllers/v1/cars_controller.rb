module V1
class CarsController < ApplicationController
	before_action :set_garage
  before_action :set_garage_car, only: [:show, :update, :destroy]

  # GET /garages/:garage_id/cars
  def index
    json_response(@garage.cars)
  end

  # GET /garages/:garage_id/cars/:id
  def show
      json_response(@car)
    end

    # POST /garages/:garage_id/cars
    def create
      @garage.cars.create!(car_params)
      json_response(@garage, :created)
    end

    # PUT /garages/:garage_id/cars/:id
    def update
      @car.update(car_params)
      json_response(@car, :ok)
    end

    # DELETE /garages/:garage_id/cars/:id
    def destroy
      @car.destroy
      json_response(@car, :ok)
    end

    private

    def car_params
      params.permit(:model, :color)
    end

    def set_garage
      @garage = Garage.find(params[:garage_id])
    end

    def set_garage_car
      @car = @garage.cars.find_by!(id: params[:id]) if @garage
    end
end
end