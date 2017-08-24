class CommentsController < ApplicationController
  def create
    Comment.create!(post_id: params[:post_id], user_id: params[:user_id], body: params[:body])
    redirect_to users_path
  end
end


