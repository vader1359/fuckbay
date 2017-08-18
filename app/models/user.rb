class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  has_many :posts, foreign_key: :author_id
  has_many :likes, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  
  
  def toggle_like!(item)
    like = item.likes.where(user_id: self.id).last
    if like.present?
      like.destroy
    else
      item.likes.create(user_id: self.id)
    end
  end

  def likes?(post)
    likes.where(item: post).present? 
  end
end
