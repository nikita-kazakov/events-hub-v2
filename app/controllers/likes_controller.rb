class LikesController < ApplicationController

  before_action :require_signin

  def create
    @event = Event.find(params[:event_id])
    @event.likes.create(user: current_user)
    flash[:notice] = "You liked #{@event.name}!"
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:event_id])
    @event.likes.find_by(user: current_user.id).destroy
    redirect_to @event
  end


end
