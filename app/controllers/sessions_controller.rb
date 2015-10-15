class SessionsController < ApplicationController
  before_action :require_no_user!, only: [:create, :new]

 def create
   user = User.find_by_credentials(
     params[:user][:user_name],
     params[:user][:password]
   )

   if user.nil?
     flash[:errors] = ["Incorrect username and/or password"]
     redirect_to account_login_url
   else
     login_user!(user)
     redirect_to "/#browse"
   end
 end

 def destroy
   logout_user!
   render json: {}
 end

 def new
   redirect_to account_login_url
 end
end
