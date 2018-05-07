class Event < ApplicationRecord
	has_and_belongs_to_many :attendees, :class_name => 'User', :join_table => :events_users
    belongs_to :creator, :class_name => 'User'
end
