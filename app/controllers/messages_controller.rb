class MessagesController < ApplicationController
  def index
    @friend_list_img = list_friendship_img(current_user)
    
    @chatting_friends = get_chatting_friends(current_user)
    
  end
  
  def create
    if !params[:message].nil? || !params[:message].empty?
      User.find(params[:sender_id])
      .sent_messages.create(
      recipient_id: params[:recipient_id], 
      body: params[:message])
      
      redirect_to messages_path
    end
  end
  
  def get_chatting_friends(user)
    recipient_list = user.sent_messages.map {|message| message.recipient_id}
    sender_list = user.received_messages.map {|message| message.sender_id}
    @chatting_friend_ids = (recipient_list + sender_list).uniq!
    chatting_friends = @chatting_friend_ids.map {|id| User.find(id)}
  end
  
  
  
end


# friendship = Friendship.where(["user_id = ? and friend_id = ?", user.id, friend_id])