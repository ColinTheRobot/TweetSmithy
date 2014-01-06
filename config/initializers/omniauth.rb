OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY_SMITHY'], ENV['TWITTER_SECRET_SMITHY']
end