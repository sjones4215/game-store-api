class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        render json: @review
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            render json: @review, status: :created, location: @review
        else
            render json: @review.errors, status: :unprocessable_entity
        end
    end 

    def update(review_params)
        if @review.update
            render json: @review
        else
            remder json: @reveiw.errors, status: :unprocessable_entity        
        end
    end

    def destroy
        @review.destroy
    end

    private

    def review_params
        params.require(:review).permit(:body, :movie_id, :rating)
    end

end
