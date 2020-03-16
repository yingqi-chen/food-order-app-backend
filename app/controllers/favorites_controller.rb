class FavoritesController < ApplicationController
    before_action :set_user
    

    def index
        favorites = @user.favorites
        render json: favorites
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
      end
    
    def create
        favorite = @user.favorites.new(favorite_params)    
        favorite.date = DateTime.now
        favorite.status = "not-submitted"
        if favorite.save
            render json: favorite
        else
            render json: {error: "Error creating favorites."}
        end
    end
    
    
      private
    
      def set_user
        @user = User.find(params[:user_id])
      end
    
    
      def favorite_params
        params.require(:favorite).permit(:user_id, :date, :dishes=>[
            :name,
            :image
        ])
      end
end
