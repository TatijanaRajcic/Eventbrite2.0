class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :attended_events, :class_name => 'Event', :join_table => :events_users
  has_many :created_events, :foreign_key => :creator_id, :class_name => 'Event'
end

#Gem devise pour faciliter l'authentification des Users
#On retrouve notre creator dans la table Event (à chaque création d'event, on récupère l'id du creator)
#On stocke toutes les associations Attendee/Event dans la join table