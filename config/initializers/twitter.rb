client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV["TWITTER_KEY_SMITHY"]
  config.consumer_secret = ENV["TWITTER_SECRET_SMITHY"]
  config.oauth_token = ENV["OAUTH_TOKEN_SMITHY"]
  config.oauth_token_secret = ENV["OAUTH_SECRET_SMITHY"]
end