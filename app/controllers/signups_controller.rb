class SignupsController < ApplicationController
    def index
        signup = Signup.all 
        render json: signup, status: :ok
    end
    
    def create 
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
    end

    private 

    def signup_params 
        params.permit(:activity_id, :camper_id, :time)
    end
end
