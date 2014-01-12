OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'TWITTER_KEY_SMITHY', 'TWITTER_SECRET_SMITHY'
end