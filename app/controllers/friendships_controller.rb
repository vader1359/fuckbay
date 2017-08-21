class FriendshipsController < ApplicationController
  
  def new
    @friend_list_img = list_friendship_img(current_user)
  end
  
  def create
    user = User.find(params[:user_id])
    toggle_friend(user, params[:friend_id])
  end
  
  def destroy
  end
  
  def toggle_friend(user, friend_id)
    friendship = Friendship.where(["user_id = ? and friend_id = ?", user.id, friend_id])
    if friendship.present?
      friendship.first.destroy
    else
      user.friendships.create(friend_id: friend_id)
      
    end

    redirect_to new_friendship_path
  end

  
  
end

