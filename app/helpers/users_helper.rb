module UsersHelper
  def get_sample_user_image
    image = User.all.sample.profile_url
    if image != nil
      image
    else
      image = "avatar.png"
    end
    
  end
end
