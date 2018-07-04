# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => '7907ac131d9ada7cd5e1a4c9f1179701-770f03c4-de7274c5',
  :domain         => 'radiant-hollows-65088.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp