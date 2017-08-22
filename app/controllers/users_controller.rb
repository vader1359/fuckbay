class UsersController < ApplicationController
  def index
    @post = Post.new
    @friend_list_img = list_friendship_img(current_user)
    # raise
  end
  def test
  end
  
  def welcome
  end
  
  def newsfeed
    @friend_list_img = list_friendship_img(current_user)
    
    my_posts = current_user.posts
    my_friends = current_user.friends
    wall_friend_posts = wall_friends.map {|friend| ([] << fr
  end
  
  def list_friendship_img(user)
    friendship_list = Friendship.where("user_id = #{user.id}")
    friend_ids = friendship_list.map {|friendship| friendship.friend_id }
    friend_ids.map {|id| User.find(id).profile_url}
  end
  
  
  
end
