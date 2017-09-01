class Event < ApplicationRecord
  validates_presence_of :name, :time, :duration 

  has_many :events_users, dependent: :destroy
  has_many :users, through: :events_users
  has_many :timeslots, dependent: :destroy
end
