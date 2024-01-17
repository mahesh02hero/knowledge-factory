class SessionsController < ApplicationController
  def new
    # Login page
  end

 
  def create
    # Logic for user authentication
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      # If authentication is successful
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      # If authentication fails
      flash.now[:alert] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    # Logout user
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out successfully'
  end
end
