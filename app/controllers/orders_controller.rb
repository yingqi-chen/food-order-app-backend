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
        order = @user.orders.new(order_params)    
        order.date = DateTime.now
        order.status = "not-submitted"
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
        params.require(:order).permit(:user_id, :date, :dishes=>[
            :name,
            :image
        ])
      end
end
