class UsersController < ApplicationController

    def show
        user = User.find_by id:params[:id]
        if user
           render json: user, include: ['order', 'favorites','orders.dishes','favorites.dishes']
        else 
           render json: {error: 'Error findind account'}
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            payload = user.id
            token = encode_token(payload)
            render json: {
                user:user, include: ['order', 'favorites','orders.dishes','favorites.dishes'], 
                jwt:token
            }
        else
            render json: {error: 'Error creating account'}
        end
    end

    private

    def user_params
      params.permit(:name, :password, :email)
    end

end
