class SweetsController < ApplicationController
    
    def index
        render json: Sweet.all 
    end

    def show
        if(sweet = Sweet.find_by(id: params[:id])) 
            render json: sweet
        else 
            render json: {error: "Sweet not found"}, status: 404
        end
    end
end
