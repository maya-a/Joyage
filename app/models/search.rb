class Search < ApplicationRecord
  belongs_to :user
  has_many :origins, through: :search_origins
end
