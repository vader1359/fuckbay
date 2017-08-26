class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protect_from_forgery with: :exception
  helper_method :list_friendship_img
  helper_method :check_current_user
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  def list_friendship_img(user)
    if current_user.present?
      friendship_list = Friendship.where("user_id = #{current_user.id}")
      friend_ids = friendship_list.map {|friendship| friendship.friend_id }
      friend_ids.map {|id| User.find(id).profile_url}
    end
  end
  
  def make_friend_list
    @friend_list_img = list_friendship_img(current_user)
  end
  
  def check_current_user
    if !current_user.present?
      redirect_to "/sign_in"
    end
    
  end
  
end
