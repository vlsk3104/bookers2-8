


# if Rails.env.production?

	ActionMailer::Base.delivery_method = :smtp
	ActionMailer::Base.smtp_settings = {
	  address: 'smtp.gmail.com',
	  domain: 'gmail.com',
	  port: 587,
	  user_name: 'kitakazetoshirokuma@gmail.com',
	  password: 'pokers9613',
	  authentication: 'plain',
	  enable_starttls_auto: true
	}

# #elsif Rails.env.development?
#  # 	ActionMailer::Base.delivery_method = :letter_opener
# else
#   	ActionMailer::Base.delivery_method = :test
# end