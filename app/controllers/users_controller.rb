class UsersController < ApplicationController

	def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # UserMailer.welcome_email(@user).deliver
      cookies.permanent[:authentication_token] = @user.authentication_token
      flash[:info] = ["Welcome to Top 25 Beauty!"]
      redirect_to '/list_items'
    else
      flash[:error] = @user.errors.full_messages
      redirect_to '/users/new'
    end
  end

private

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end