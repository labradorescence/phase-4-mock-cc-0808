class CampersController < ApplicationController
    # rescue_from ActiveRecord::RecordNotfound, with: :private_methods_camper
    def index
        campers = Camper.all 
        render json: campers, status: :ok
    end

    def show
        campers = Camper.find(params[:id]) 
        render json: campers
    end
    
    def create 
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private 

    # def private_methods_camper
    #     byebug
    #     render json: {error: "Camper not found"}
    # end

    def camper_params 
        params.permit(:name, :age)
    end
end
