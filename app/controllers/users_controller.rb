class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

    def index = User.all
        render json: @users
    end

    def show 
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
    end

    private
    def user_params
        params.permit(:username, :email, :password)
    end
end
