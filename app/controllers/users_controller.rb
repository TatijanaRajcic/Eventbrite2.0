class UsersController < ApplicationController
  def show
    @user = current_user
    @event = Event.new
    @events_created = Event.where(creator_id: @user.id)
    @events_attended = current_user.attended_events
  end
end
