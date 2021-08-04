class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in]

    def index 
        @users = User.all
        render json: @users
    end

    def show 
        @user = User.find(params[:id])
        render json: @user, include: ["orders"]
    end

    def create
        # byebug
        @user = User.create(user_params)
        if @user.valid?
            wristband_token = encode_token({user_id: @user.id})

            render json: {
                user: UserSerializer.new(@user),
                token: wristband_token
            }
        else
            render json: {error: "INVALID USER"}, status: 422
        end
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            wristband_token = encode_token({user_id: @user.id})

            render json: {
                user: UserSerializer.new(@user), 
                token: wristband_token
            }

        else
            render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
        end
    end

    def keep_logged_in
        # @user exists here because of the before_action
        wristband_token = encode_token({user_id: @user.id})

        render json: {
            user: UserSerializer.new(@user), 
            token: wristband_token
        }
    end

    def update
        # byebug
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    private
    def user_params
        params.permit(:username, :first_name, :last_name, :email, :address, :password)
    end
end
