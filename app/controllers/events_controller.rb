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
    if @event.attendees.include? current_user
      flash.now[:error] = 'Vous participez déjà à l\'évènement'
      redirect_to @event
    else
      @event.attendees << current_user
      flash.now[:success] = 'Votre participation a été enregistrée!'
      redirect_to @event
    end
  end

  def unsubscribe
    @event = Event.find(params[:id])
    @event.attendees.destroy(current_user)
    flash.now[:success] = 'Vous êtes désinscris de l\'évènement'
    redirect_to @event
  end


  private

  def event_params
    params.require(:event).permit(:name,:description,:date,:place,:price)
  end

end