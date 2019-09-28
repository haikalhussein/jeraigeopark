class Accomodation < ApplicationRecord
  has_many :rooms
  belongs_to :user
end
