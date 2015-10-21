class Api::ReviewsController < ApplicationController

  def create
    user_id = current_user.id
    workshop_id = params[:workshop_id]
    @review = Review.create!({user_id: user_id, workshop_id: workshop_id}.merge(review_params))
    render json: @review
  end

  def update
    @review = Review.find(params[:review][:review_id])
    if @review.update(review_params)
      render json: @review
    end
  end

  def index
    @reviews = Review.all
  end

  def destroy
    @review = Review.where(workshop_id: params[:workshop_id]).where(user_id: current_user.id).first
    Review.destroy(@review.id)
    render json: @review
  end

  private
  def review_params
    params.require(:review).permit(:title, :body, :rating, :workshop_id)
  end

end
