module UsersHelper
  def get_sample_user_image
    User.all.sample.profile_url
  end
end
