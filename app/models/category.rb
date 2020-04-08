class Category < ApplicationRecord
  has_many :post_category
  has_many :posts, through: :post_categories
end

