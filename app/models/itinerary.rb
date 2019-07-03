class Itinerary < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :flights, dependent: :destroy
end
