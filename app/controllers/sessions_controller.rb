class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back #{user.name}."
      redirect_to user
    else
      flash[:alert] = "Invalid Email / Password"
      render :new
    end
  end


end
