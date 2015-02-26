client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV["TWITTER_KEY_SMITHY"]
  config.consumer_secret = ENV["TWITTER_SECRET_SMITHY"]
  config.access_token= ENV["OAUTH_TOKEN_SMITHY"]
  config.access_token_secret = ENV["OAUTH_SECRET_SMITHY"]
end

