class Trip < ApplicationRecord
  require "csv"

  belongs_to :search
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  end
