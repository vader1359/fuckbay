class Message < ApplicationRecord
  validates :body, presence: true
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"


  def is_received_message?
    if self.recipient_id == User.first.id
      true
    else
      false
    end
  end
end
