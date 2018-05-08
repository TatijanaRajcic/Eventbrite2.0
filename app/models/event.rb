class Event < ApplicationRecord
	has_and_belongs_to_many :attendees, :class_name => 'User', :join_table => :events_users
    belongs_to :creator, :class_name => 'User'
end

#On retrouve notre creator dans la table Event (à chaque création d'event, on récupère l'id du creator)
#On stocke toutes les associations Attendee/Event dans la join table