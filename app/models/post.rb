class Post < ActiveRecord::Base
  attr_accessible :description, :title, :image

  mount_uploader :image, ImageUploader

  # Callbacks
  after_create :send_notification_mail

  has_paper_trail

  private
    def send_notification_mail
      # Notifier.post_create(self).deliver
      Notifier.delay.post_create(self)
    end
end
