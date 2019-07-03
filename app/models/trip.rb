class Trip < ApplicationRecord
  belongs_to :search
  belongs_to :destination
  has_many :itineraries, dependent: :destroy
  has_many :flights, through: :itinerarys, dependent: :destroy
end

