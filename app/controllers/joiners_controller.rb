class JoinersController < ApplicationController


    def index
        @joiners = Joiner.all
        render json: @joiners
    end 

    def show
        @joiner = Joiner.find(params[:id])
        render json: @joiner
    end

    def create
        joiner = Joiner.create(joiner_params)
        render json: joiner
    end

    def joiner_params
        params.permit(:item_id, :order_id)
    end

    def destroy
        joiner = Joiner.find(params[:id])
        joiner.destroy
        render json: {message: "Item has been deleted", joiner: joiner}
    end

end
