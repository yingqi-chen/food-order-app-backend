class UsersController < ApplicationController

    def show
        user = User.find_by id:params[:id]
        if user
           render json: user
        else 
           render json: {error: 'Error findind account'}
        end
    end

    def create
        user = User.new(user_params)
        if user
            render json: user
        else
            render json: {error: 'Error creating account'}
        end
    end


end
