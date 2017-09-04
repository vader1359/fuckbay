class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :make_friend_list
  protect_from_forgery with: :exception 
  helper_method :list_friendship_img
  helper_method :check_current_user
  helper_method :is_received_message?
  before_action :configure_permitted_parameters, if: :devise_controller?
  # protect_from_forgery with: :null_session
  skip_before_action :verify_authenticity_token
  
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
    if current_user.present?
      @friend_list_img = list_friendship_img(current_user)
    else
      @friend_list_img = User.all.shuffle[0..6].map {|user| user.profile_url}
    end
    
  end
  
  def default_profile(friend_list_img)
    friend_list_img.each do |image|
      if image = nil
        image = "avatar.png"
      end
    end
  end
  
  def check_current_user
    if !current_user.present?
      redirect_to "/sign_in"
    end
    
  end
  
  def is_received_message?(message)
    if message.recipient_id == current_user.id
      true
    else
      false
    end
  end
  
end
