class SessionController < ApplicationController
    def login
        user = User.find_by :email=>params[:email]
        if user && user.authenticate(params[:password])
            payload = user.id
            token = encode_token(payload)
            render json: {
                user:user, include: ['order', 'favorites','orders.dishes','favorites.dishes'], 
                jwt:token
            }
        else
            render json: {status: "error", message: "We don't find such an user according to your information,please try again."}
        end
    end
end
