class SessionController < ApplicationController
    def login
        @user = User.find_by :email=>params[:email]
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {error: "We don't find such an user according to your information,please try again."}
        end
    end
end
