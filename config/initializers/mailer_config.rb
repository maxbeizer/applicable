ActionMailer::Base.smtp_settings = {
                                    :enable_starttls_auto => true,
                                    :address => "smtp.gmail.com",
                                    :port => 587,
                                    :domain => "gmail.com",
                                    :user_name => ENV['GMAIL_KEY'],
                                    :password => ENV['GMAIL_SECRET'],
                                    :authentication => :plain}

require 'development_mail_interceptor'
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
