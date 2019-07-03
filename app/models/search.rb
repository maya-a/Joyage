class Search < ApplicationRecord
  belongs_to :user
  has_many :search_origins
  has_many :origins, through: :search_origins

  # validations
  validates :category, presence: true
  validates :dep_date, presence: true
  validates :ret_date, presence: true
end

