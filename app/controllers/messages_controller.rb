class MessagesController < ApplicationController
  def index
    # @chatting_friends = get_chatting_friends(current_user)
    @chatting_friends = User.all[3..6]
    if current_user.present? 
      if session[:new_chatbox] != nil
        new_chat_user = User.find_by(profile_url: URI.decode(session[:new_chatbox]))
        @chatting_friends << new_chat_user
      end
      
      # raise
      @chatting_friends
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
    session[:new_chatbox] = params[:profile_url]
    redirect_to messages_path
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