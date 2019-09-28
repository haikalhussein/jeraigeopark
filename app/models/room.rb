class Room < ApplicationRecord
  belongs_to :room_type
  belongs_to :accomodation
  has_many :bookings
end
