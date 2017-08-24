class Post < ApplicationRecord
  validates :body, presence: true
  validates :wall_id, presence: true
  belongs_to :author, class_name: "User"
  has_many :likes, as: :item
  has_many :comments
end
