class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  validates :title, :content, :image, presence: true
  belongs_to :user
  has_many :post_category
  has_many :categories, through: :post_category
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
