class Reportage < ApplicationRecord
  belongs_to :user
  has_many_attached :contents
end
