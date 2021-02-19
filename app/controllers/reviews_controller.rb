class ReviewsController < ApplicationController
    before_action :authorized, only: [:create]

    def index 
        @reviews = Review.all 
        render json: @reviews
    end 

    def create 
        
        @review = Review.create!(user_id: @user.id, item_id: params[:item_id], content: params[:content])
        # byebug
        render json: @review
    end 

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        render json: @review
    end 

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        render json: @review
    end 

    private 

    def review_params
        params.permit(:item_id, :content)
    end 
end
