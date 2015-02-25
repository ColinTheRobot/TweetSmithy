class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    user = where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
    user.oauth_token = auth["credentials"]["token"]
    user.oauth_secret = auth["credentials"]["secret"]
    user.save!
    user
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end

  def tweet(tweet)
    client = request_client
    client.update(tweet)
  end

  private

  def request_client
    Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_KEY_SMITHY']
      config.consumer_secret = ENV['TWITTER_SECRET_SMITHY']
      config.access_token = oauth_token
      config.access_token_secret = oauth_secret
    end
  end
end
