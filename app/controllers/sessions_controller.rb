class SessionsController < ApplicationController

  def new

  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back #{user.name}."
      redirect_to user
    else
      flash[:alert] = "Invalid Email / Password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You are signed out"
    redirect_to root_url
  end


end
