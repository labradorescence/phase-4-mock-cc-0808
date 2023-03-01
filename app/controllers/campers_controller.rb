class CampersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found
    
    def index
        render json: Camper.all, status: :ok
    end
    
    def show
        camper = Camper.find(params[:id])
        render json: camper
    end
    
    def create
        camper = Camper.create(camper_params)
        render json: camper, status: :created
    end

    private

    def camper_params
        params.permit(:name, :age)
    end
    
    def not_found
        render json: {error: "Camper not found"}
    end
end
