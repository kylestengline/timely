# A location where events are held (coffee shop, library, etc)
class Location < ApplicationRecord
  validates_presence_of :name, :address
  has_many :events
end
