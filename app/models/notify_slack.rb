class NotifySlack < ApplicationRecord
  # This preapares the integration with Slack when we call: NotifySlack.new
  def initialize
    @notifier = Slack::Notifier.new ENV["SLACK_WEBHOOK_URL"]
  end

  def notify_new_post(post)
    @notifier.ping(post.body)
  end


end
