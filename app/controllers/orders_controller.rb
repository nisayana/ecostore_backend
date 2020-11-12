class OrdersController < ApplicationController

    before_action :authorized

    def index
        @orders = Order.all
        render json: @orders
    end

    def transform 
        current_cart = @user.orders.find(params[:id])
        current_cart.update(order_status: true)
        new_cart = @user.orders.create(order_status: false)
        render json: {
            current_cart: OrderSerializer.new(new_cart),
            transformed_cart: OrderSerializer.new(current_cart)
        }
    end
end
