class LikesController < ApplicationController
  def toggle
    current_user.toggle_like!(Post.find(params[:id]))
    # else
    #   redirect_to new_user_session_path
    # end
    
    # redirect_to root_path
    
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
      format.js
    end
    
  end
end
