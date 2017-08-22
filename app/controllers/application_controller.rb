class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  helper_method :list_friendship_img

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def list_friendship_img(user)
    friendship_list = Friendship.where("user_id = #{user.id}")
    friend_ids = friendship_list.map {|friendship| friendship.friend_id }
    friend_ids.map {|id| User.find(id).profile_url}
  end

  def make_friend_list
    @friend_list_img = list_friendship_img(current_user)
  end

end
