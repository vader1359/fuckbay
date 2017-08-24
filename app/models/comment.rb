class Comment < ApplicationRecord
  has_many :likes, as: :item
  has_many :replies
end
