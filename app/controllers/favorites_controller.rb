class FavoritesController < ApplicationController
    
    
    def index
        favorites = User.find(params[:user_id]).favorites
        render json: favorites
    end
end
