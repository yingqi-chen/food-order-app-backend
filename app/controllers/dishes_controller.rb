class DishesController < ApplicationController


    def index
        dishes = Dish.all
        render json: dishes
    end


private

   def dish_params
    params.require(:dish).permit(:name,:image)
   end
end
