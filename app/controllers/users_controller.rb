class UsersController < ApplicationController

    def show
        user = User.find_by id:params[:id]
        if user
           render json: user
        else 
           render json: {error: 'Error findind account'}
        end
    end


end
