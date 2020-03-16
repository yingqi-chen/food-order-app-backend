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

    private

    def user_params
      params.require(:user).permit(:name, :password, :email)
    end

end
