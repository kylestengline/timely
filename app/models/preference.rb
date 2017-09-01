class Preference < ApplicationRecord
  validates_presence_of :preference_type

  belongs_to :timeslot, class_name: "Timeslot"
  belongs_to :user

  enum preference_type: [:not_filled_in,
                         :not_available,
                         :tentative,
                         :available,
                         :preferred]
end
