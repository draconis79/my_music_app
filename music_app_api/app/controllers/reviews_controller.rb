class ReviewsController < ApplicationController

  # GET /reviews
  def index
    @reviews = Review.all.reverse

    render json: @reviews
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)
    @review.album_id = params[:album_id]


    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:title, :content, :author)
    end
end
