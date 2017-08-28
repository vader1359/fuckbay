class UsersController < ApplicationController
  # before_action :list_friendship_img
  # skip_before_filter :authenticate_user!
  def index
    # @post = Post.new
    if current_user.present?
      @friend_list_img = list_friendship_img(current_user)
      my_posts = current_user.posts
      my_friends = current_user.friends
      my_friend_posts = my_friends.map {|friend| ([] << friend.posts)}
      @newsfeed_posts = my_posts + my_friend_posts.flatten
      @newsfeed_posts.sort_by! {|post| post.updated_at}.reverse!
    else
      redirect_to welcome_path
    end
  end
  def test
  end
  
  def welcome
  end
  
  def newsfeed
    @friend_list_img = list_friendship_img(current_user)
    my_posts = current_user.posts
    my_friends = current_user.friends
    my_friend_posts = my_friends.map {|friend| ([] << friend.posts)}
    @newsfeed_posts = my_posts + my_friend_posts.flatten
    @newsfeed_posts.sort_by! {|post| post.updated_at}.reverse!
    
  end
  
   def show
    @friend_list_img = list_friendship_img(current_user)
    
    wall_user = User.find(params[:id])
    wall_posts = wall_user.posts
    wall_friends = wall_user.friends
    wall_friend_posts = wall_friends.map {|friend| ([] << friend.posts)}
    @wall_posts = wall_posts + wall_friend_posts.flatten
    @wall_posts.sort_by! {|post| post.updated_at}
  end
  
  
  
  
end
