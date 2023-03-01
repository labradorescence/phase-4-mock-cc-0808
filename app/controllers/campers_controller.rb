class CampersController < ApplicationController
    def index 
        camper = Camper.all
        render json: camper
    end

    def show 
        camper = Camper.find(params[:id])
        if camper 
            render json: camper ,  status: :found  
        else
            rende json:{error: "Camper not found"}, status: :not_found
        end

    end

    def create
        camper = Camper.find_by(camper_params)
        if camper 
            render json: camper  , status: :created
        else 
            render json: {error:["validation error"]}, status: :not_found
        end
    end

    private 
    def camper_params
        params.permit(:name, :age)
    end
end
