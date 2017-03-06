class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id]) # we need @restaurant in our `simple_form_for`
    @review = Review.new
  end
  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id]) # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.save
    redirect_to restaurant_path(@review.restaurant_id)
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
