class DishesController < ApplicationController

    # before_action :authenticate_user, only: [:create,:edit, destroy]
    before_action :find_dish, only: [:destroy]

    def index
        dishes = Dish.all
        render json: dishes
    end

    def create
        dish = Dish.create(dish_params)
        if dish
            render json: dish
        else
            render json: {error: "Error creating dish."}
        end
    end


    def destroy
        if @dish.delete
            render plain: "Succesfully deleted!"
        else
            render json: {error: "Can't delete the movie."}
        end
    end

private
   
#    def authenticate_user
#     if current_user.level !=="administrator"
#        render json: {error: "You are not authorized to change dishes."}
#     end
#    end

   def find_dish
     @dish = Dish.find_by id: params[:id]
     unless @dish
        render json: {error: "cannot find the dish."}
     end
   end

   def dish_params
    params.require(:dish).permit(:name,:image)
   end
end
