class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  has_many :posts, foreign_key: :author_id, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  has_one :wall, dependent: :destroy
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :received_messages, foreign_key: :recipient_id, class_name: "Message"
  has_many :sent_messages, foreign_key: :sender_id, class_name: "Message"
  
  
  def self.generate_users(n)
    url = "https://randomuser.me/api?results=#{n}"
    response = HTTP.get(url)
    data = response.parse
    people = data["results"]
    people.each do |person|
      name = person["name"]["first"] + " " + person["name"]["last"]
      User.create! name: name.titleize, email: person["email"], password: "abcdef",
      profile_url: person["picture"]["large"]
    end
    # User.all.each do {|user| user.wall.create}
  end
  
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

  def my_messages_with(friend_id)
    received_messages = Message.where("sender_id = ? and recipient_id = ?", friend_id, self.id)
    sent_messages = Message.where("sender_id = ? and recipient_id = ?", self.id, friend_id)
    messages = received_messages + sent_messages
    messages.sort_by! {|message| message.created_at}
  # messages = Message.where("(sender_id = ? AND recipient_id = ?) OR (sender_id = ? and recipient_id = ?)", friend_id, id, id, friend_id).order("updated_at DESC")
  end

  

 

end