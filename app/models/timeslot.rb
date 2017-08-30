class Timeslot < ApplicationRecord
  validates :event_id, presence: true
  validates :start_time, presence: true

  belongs_to :event
  has_many :preferences, through: :event
end
