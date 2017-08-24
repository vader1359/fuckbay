class Comment < ApplicationRecord
  validates :body, presence: true
  has_many :likes, as: :item
  has_many :replies
  belongs_to :post
  # belongs_to :item, polymorphic: true
end
