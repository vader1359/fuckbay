class WallsController < ApplicationController
  def create
  end
  def index
    @friend_list_img = list_friendship_img(current_user)

    wall_user = User.find(params[:user_id])
    @user = User.new
    wall_posts = wall_user.posts
    wall_friends = wall_user.friends
    wall_friend_posts = wall_friends.map {|friend| ([] << friend.posts)}
    @wall_posts = wall_posts + wall_friend_posts.flatten
    # Render all thos this to the wall
  end
end
