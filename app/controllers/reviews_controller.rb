class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show update destroy edit]

  def index
    @reviews = Review.all
  end

  def show
  end

  def edit
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @booking.status = "Finalizado"
    @booking.save
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to misbook_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @review.update(review_params)
    # redirect_to car_path(@car)
  end

  def destroy
    @review.destroy
    # redirect_to misautos_path, status: :see_other
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
