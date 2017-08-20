class PostsController < ApplicationController
  def create
    post = Post.new(author_id: params["post"][:author_id], body: params["post"][:body])
    post.save
    NotifySlack.new.notify_new_post(Post.last)
    redirect_to users_path
  end
end
