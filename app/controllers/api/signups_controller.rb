class Api::SignupsController < ApplicationController

  def create
    user_id = current_user.id
    workshop_id = params[:workshop_id]
    num_in_party = params[:num_in_party].to_i
    @signup = Signup.create!({user_id: user_id, workshop_id: workshop_id, num_in_party: num_in_party})
    render json: @signup
  end

  def index
    @signups = Signup.all
  end

  def destroy
    @signup = Signup.where(workshop_id: params[:workshop_id]).where(user_id: current_user.id).first
    Signup.destroy(@signup.id)
    render json: @signup
  end

end
