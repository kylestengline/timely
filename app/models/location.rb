class Location < ApplicationRecord
  validates_presence_of :name, :address
  has_many :events
end
