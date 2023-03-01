class ActivitiesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :not_found
    def index
        render json: Activity.all, status: :ok
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end
    
    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content, status: 204
    end

    private
         
    def not_found
        render json: {error: "Activity not found"}
    end
    
end
