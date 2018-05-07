class EventsController < ApplicationController
  def new
  	@user = current_user
  	@event = Event.new
  end

  def create
  	@user = current_user
  	@event = Event.new(event_params)
  	@event.creator_id = @user.id
    @event.save
    redirect_to @user
  end

  def show
  	@event = Event.find(params[:id])
  end

  def index
  	@event = Event.new
  	@events = Event.all
  end

  def subscribe
    @event = Event.find(params[:id])
    @event.attendees << current_user
    @event.save
    redirect_to @event
  end

  private

  def event_params
    params.require(:event).permit(:description,:date,:place)
  end

end