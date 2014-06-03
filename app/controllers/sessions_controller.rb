class SessionsController < ApplicationController

  def new
  end

  def create
    
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      cookies.permanent[:authentication_token] = user.authentication_token
      redirect_to '/list_items'
    else
      redirect_to '/login'
    end
  end
  
  def show;end

  def destroy
    cookies.delete(:authentication_token)
    redirect_to root_url
  end
end
