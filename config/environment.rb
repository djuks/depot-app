# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Depot::Application.configure do
  config.action_mailer.smtp_settings = {
    address:              'smtp.gmail.com',
    port:                 587,
    domain:               'gmail.com',
    user_name:            'djurica96@gmail.com',
    password:             'sifra123',
    authentication:       'plain'
    # enable_starttls_auto: true
    # ^ ^ remove this option ^ ^
  }
end
