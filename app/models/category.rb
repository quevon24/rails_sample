class Category < ApplicationRecord
  # a category has many posts
  has_many :posts
end
