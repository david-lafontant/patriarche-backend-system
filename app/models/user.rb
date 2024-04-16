class User < ApplicationRecord
  has_many :contents
  has_many :articles
end
