class UsersController < ApplicationController
  # before_action :list_friendship_img
  def index
    @post = Post.new
    @friend_list_img = list_friendship_img(current_user)
    raise
  end
  def test
  end
  
  def welcome
  end
  
  def newsfeed
  end
  
  def show
    @friend_list_img = list_friendship_img(current_user)

    wall_user = User.find(params[:id])
    @user = User.new
    wall_posts = wall_user.posts
    wall_friends = wall_user.friends
    wall_friend_posts = wall_friends.map {|friend| ([] << friend.posts)}
    @wall_posts = wall_posts + wall_friend_posts.flatten
  end
  
  
  
  
end
