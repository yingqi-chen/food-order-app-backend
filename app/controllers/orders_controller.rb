class OrdersController < ApplicationController

    before_action :set_user


    def index
        orders = @user.orders
        render json: orders
    end

    def show
        order = Order.find(params[:id])
        render json: order
      end
    
    def create
       binding.pry
        order = @user.orders.new    
        order.date = DateTime.now
        order.status = "submitted"
        order.total = order_params[:total]
        order_params[:dishes].each do |d|
          dish=Dish.find_by name: d[:name]
          order.dishes.push(dish)
        end  
        if order.save
            render json: order
        else
            render json: {error: "Error creating orders."}
        end
    end
    
    
      private
    
      def set_user
        @user = User.find(params[:user_id])
      end
    
    
      def order_params
        params.permit(:user_id, :date, :total, :dishes=>[
            :name,
            :image
        ])
      end
end
