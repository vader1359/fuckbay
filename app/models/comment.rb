class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true
  has_many :likes, as: :item
  has_many :replies
  belongs_to :post
  belongs_to :user
  # belongs_to :item, polymorphic: true
end
