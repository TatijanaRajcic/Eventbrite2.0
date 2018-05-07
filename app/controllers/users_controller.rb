class UsersController < ApplicationController
  def show
    @user = current_user
    @event = Event.new
    @events = Event.where(creator_id: @user.id)
  end
end
