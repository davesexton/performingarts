class Contact < ActionMailer::Base
  default from: APP_CONFIG['email_from']

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact.contact_message.subject
  #
  def contact_message(message)
    @greeting = "Hi"

    mail to: APP_CONFIG['email_to']
  end

end
