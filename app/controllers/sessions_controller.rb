class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_or_create_by(provider: auth["provider"], uid: auth["uid"])
    user.update_info(auth)
    session[:user_id] = user.id
    redirect_to root_url, notice: "You are now logged in"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You have been logged out"
  end

end
