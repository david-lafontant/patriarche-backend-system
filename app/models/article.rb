class Article < ApplicationRecord
  belongs_to :user
  has_many_attached :contents
end
