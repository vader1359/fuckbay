class PostsController < ApplicationController
  def create
    post = Post.new(author_id: params[:author_id], body: params[:body], wall_id: params[:wall_id])
    post.save
    NotifySlack.new.notify_new_post(Post.last)
    redirect_to users_path
  end
end
