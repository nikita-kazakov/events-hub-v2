class RegistrationsController < ApplicationController

  before_action :require_signin

  def index
    @event = Event.find(params[:event_id])
    @registrations = @event.registrations.all
  end

  def new
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new
  end

  def show

    @event = Event.find(params[:event_id])
    @registration = @event.registrations.find(params[:id])

  end

  def create
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new(registration_params)
    @registration.user = current_user


    if user_already_registered? #Checking if user is already registered
      redirect_to @event
      flash[:alert] = "You've already registered for this event."
    elsif @registration.save
      redirect_to @event
      flash[:notice] = "Registration created!"
    else
      render :new
    end

  end



  def edit
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.find(params[:id])
  end

  def update

    @event = Event.find(params[:event_id])
    @registration = @event.registrations.find(params[:id])

    if @registration.update(registration_params)
      redirect_to event_registrations_path
      flash[:notice] = "Registration updated!"
    else
      render :edit
    end

  end

  def destroy
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.find(params[:id])
    @registration.destroy
    flash[:notice] = "Registration Deleted."
    redirect_to @event
  end

  private
  def registration_params
    params.require(:registration).permit(:how_heard)
  end

  def user_already_registered?
    @event = Event.find(params[:event_id])
    @event.registrations.where(user_id:current_user).exists?
  end

end
