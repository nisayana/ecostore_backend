class JoinersController < ApplicationController

    def create
        joiner = Joiner.create(joiner_params)
        render json: joiner
    end

    def joiner_params
        params.permit(:item_id, :order_id)
    end

end
