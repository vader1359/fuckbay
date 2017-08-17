class LikesController < ApplicationController
  def toggle
    if current_user
      current_user.toggle_like!(Post.find(params[:id]))
    else
      redirect_to new_user_session_path
    end
  end
end
