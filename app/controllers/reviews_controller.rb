class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @reservation = Reservation.find(params[:reservation_id])
  end

  def create
    @review = Review.new(review_params)
    @review.reservation = Reservation.find(params[:reservation_id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)

  end
end
