class PostsController < ApplicationController
  def create
    post = Post.new(author_id: params["post"][:author_id], body: params["post"][:body])
    post.save
    redirect_to root_path
  end
end
