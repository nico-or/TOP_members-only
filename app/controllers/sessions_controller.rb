class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user && user&.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = "#{user.first_name} #{user.last_name}"
      redirect_to root_url, notice: 'Logged in'
    else
      redirect_to login_path, alert: 'Incorrect email or password'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'Logged out'
  end
end
