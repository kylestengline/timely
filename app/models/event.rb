class Event < ApplicationRecord
  validates :name, presence: true
  validates :time, presence: true
  validates :duration, presence: true

  has_many :events_users, dependent: :destroy
  has_many :users, through: :events_users
  has_many :timeslots, dependent: :destroy
end
