class SignupsController < ApplicationController

    def index 
        signup = Signup.all 
        render json: signup
    end

    def show 
        signup = Signup.find(params[:id])
        render json: signup
    end

    def create 
        signup = Signup.find_by(signup_params)
        if signup 
            render json: signup, status: :created
        else
            render json: {error: ["validation error"]}, status: :unprocessable_entity
        end
    end

    private 
    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end
end
