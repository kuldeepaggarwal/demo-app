class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.post_create.subject
  #
  def post_create(post)
    @post = post
    mail to: 'kuldeep.aggarwal@vinsol.com'
  end
end
