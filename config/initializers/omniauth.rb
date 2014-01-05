OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'C82kLBhhmCeAPjlLplUA', '4EbdivllgIieXOigHI9LgsF70xngvgIutlTO2Umzqo0'
           # ENV['TWITTER_KEY_SMITHY'], ENV['TWITTER_SECRET_SMITHY']
end