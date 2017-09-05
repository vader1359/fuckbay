class MessagesController < ApplicationController
  @@total_chatting_friends = []
  def index
    if current_user.present? 
      
      @chatting_friends = get_chatting_friends(current_user)
      if @@total_chatting_friends.count > @chatting_friends.count
        @chatting_friends = @@total_chatting_friends
      end
    else
      @chatting_friends = []
    end
    
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
  
  def add_chatbox
    chat_user = User.find_by(profile_url: URI.decode(params[:profile_url]))
    @@total_chatting_friends = get_chatting_friends(current_user) #Get chatting_friends
    @@total_chatting_friends << chat_user 
    @@total_chatting_friends
    redirect_to messages_path
  end
  
  def close_chatbox
  end
  
  def get_chatting_friends(user)
    recipient_list = user.sent_messages.map {|message| message.recipient_id}
    sender_list = user.received_messages.map {|message| message.sender_id}
    @chatting_friend_ids = (recipient_list + sender_list).uniq!
    if @chatting_friends_ids != nil
      chatting_friends = @chatting_friend_ids.map {|id| User.find(id)}
    else
      chatting_friends = []
    end
  end
  
  
  
end


# friendship = Friendship.where(["user_id = ? and friend_id = ?", user.id, friend_id])