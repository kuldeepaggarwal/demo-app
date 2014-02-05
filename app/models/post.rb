class Post < ActiveRecord::Base
  attr_accessible :description, :title

  # Callbacks
  after_create :send_notification_mail

  private
    def send_notification_mail
      # Notifier.post_create(self).deliver
      Notifier.delay.post_create(self)
    end
end
