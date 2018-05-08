class UsersController < ApplicationController
  def show
    @user = current_user
    @event = Event.new
    #On affiche tous les évènements où le current user est creator
    @events_created = Event.where(creator_id: @user.id)
    #On affiche tous les évènements où le current user est attendee
    @events_attended = current_user.attended_events
  end
end
