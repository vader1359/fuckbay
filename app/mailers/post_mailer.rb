class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.notify_new_post.subject
  #
  def notify_new_post(post)
    @post = Post.last

    mail to: "loi@coderschool.vn", subject: "Test Rails Email"
  end
end
