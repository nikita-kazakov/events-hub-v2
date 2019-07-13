class EventsController < ApplicationController

  before_action :require_signin, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @registrations = @event.registrations.all
    @likers = @event.likers
  end

  def edit
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(movie_params)
      redirect_to event_path
      flash[:notice] = "Event Updated!"
    else
      render :edit
    end

  end

  def create
    #@event = Event.new(params[:event])
    @event = Event.new(movie_params)

    if @event.save
      redirect_to events_path
      flash[:notice] = "Event Created!"
    else
      render :new
    end

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path

  end

private



end
