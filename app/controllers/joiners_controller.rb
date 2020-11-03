class JoinersController < ApplicationController

    def create
        joiner = Joiner.create(joiner_params)
        render json: joiner
    end

    def joiner_params
        params.permit(:order_id, :item_id)
    end

end
