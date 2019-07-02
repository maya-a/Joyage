class Origin < ApplicationRecord
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
  has_many :search_origins
  include AlgoliaSearch

  algoliasearch do
    attributes :name, :city, :code
    searchableAttributes ['unordered(name)', 'city', 'code']

  end
end

