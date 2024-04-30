class Medium < ApplicationRecord
  belongs_to :user
  belongs_to :emission
  has_one_attached :content
end
