class Api::ReviewsController < ApplicationController

  def create
    user_id = current_user.id
    workshop_id = params[:workshop_id]
    @review = Review.create!({user_id: user_id, workshop_id: workshop_id}.merge(review_params))
    render :show
  end

  def update
    @review = Review.find_by user_id: (params[:review][:user_id]), workshop_id: (params[:review][:workshop_id])
    if @review.update(review_params)
      render :show
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
