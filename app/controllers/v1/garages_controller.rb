module V1
  class GaragesController < ApplicationController
    before_action :set_garage, only: [:show, :update, :destroy]

    # GET /garages
    def index
      @garages = Garage.all
      json_response(@garages)
      # render json: @garages, root: 'Tallers', adapter: :json
    end

    # POST /garages
    def create
      @garage = Garage.create!(garage_params)
      json_response(@garage, :created)
    end

    # GET /garages/:id
    def show
      json_response(@garage)
    end

    # PUT /garages/:id
    def update
      @garage.update(garage_params)
      json_response(@garage, :ok)
    end

    # DELETE /garages/:id
    def destroy
      @garage.destroy
      json_response(@garage, :ok)
    end

    private

    def garage_params
      params.permit(:name)
    end

    def set_garage
      @garage = Garage.find(params[:id])
    end
  end
end