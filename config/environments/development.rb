Writings::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Expands the lines which load the assets
  config.assets.debug = true

  config.middleware.insert_before(Rack::Lock, Rack::LiveReload)

  ActionMailer::Base.delivery_method = :smtp 
  ActionMailer::Base.smtp_settings = { 
      :address => "smtp.siteilex.com", 
      :port => "25", 
      #:domain => "www.163.com", 
      :authentication => :login, 
      :user_name => "postmaster@noreply.siteilex.com", 
      :password => "031677"   
  }
  
end
