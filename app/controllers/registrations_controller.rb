class RegistrationsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new
  end

  def create
    @event = Event.find(params[:event_id])
    @registration = @event.registrations.new(registration_params)

    if @registration.save
      redirect_to event_path(@event)
      flash[:notice] = "Registration created!"
    else
      render :new
    end

  end

  def index
    @event = Event.find(params[:event_id])
    @registrations = @event.registrations.all
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
    redirect_to event_registrations_path
  end

  private
  def registration_params
    params.require(:registration).permit(:name, :email)
  end

end
