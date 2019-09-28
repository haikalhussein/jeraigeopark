class Booking < ApplicationRecord
  belongs_to :room_type
  belongs_to :user
  belongs_to :room
end
