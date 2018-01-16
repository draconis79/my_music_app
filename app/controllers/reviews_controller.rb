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

  def update
    find_review.update(review_params)
    render(json: { review: find_review })
  end

  def destroy
    find_review.destroy
    render(status: 204)
  end

  private
  
  def find_review
    @review ||= Review.find(params[:id])
  end
    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:title, :content, :author)
    end
end
