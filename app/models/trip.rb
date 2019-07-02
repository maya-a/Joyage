class Trip < ApplicationRecord
  belongs_to :search
  belongs_to :destination
  has_many :initerarys
end

