class SessionController < ApplicationController
    def login
        user = User.find_by :email=>params[:email]
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {
                user: user, include: ['order', 'favorites','orders.dishes','favorites.dishes'], 
                jwt:token
            }
        else
            render json: {status: "error", message: "We don't find such an user according to your information,please try again."}
        end
    end


    def auto_login
        if session_user
            render json: session_user, include: ['order', 'favorites','orders.dishes','favorites.dishes'] 
        else
            render json: {errors: "No User Logged In."}
        end     
    end
end
