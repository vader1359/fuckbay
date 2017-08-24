class MessagesController < ApplicationController
  def index
    @friend_list_img = list_friendship_img(current_user)

    @chatting_friends = [User.third, User.second]
    
  end

  def create
    User.find(params[:sender_id])
    .sent_messages.create(
      recipient_id: params[:recipient_id], 
      body: params[:message])

    redirect_to messages_path
  end


end


# friendship = Friendship.where(["user_id = ? and friend_id = ?", user.id, friend_id])