class Emission < ApplicationRecord
  belongs_to :user
  has_one_attached :poster
  has_many :emission_contents
end
