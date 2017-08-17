class LikesController < ApplicationController
  def toggle
    current_user.toggle_like!(Post.find(params[:id]))
  end
end
