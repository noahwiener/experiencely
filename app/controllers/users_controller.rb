class UsersController < ApplicationController

  before_action :require_no_user!

  def create
    @user = User.new(user_params)
    if @user.save
      login_user!(@user)
      redirect_to "/#browse"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to account_login_url
    end
  end

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def index
    @user = User.all
    render json: @users
  end

  private
  def user_params
    params.require(:user).permit(:password, :user_name, :first_name, :last_name, :about_me)
  end
end
