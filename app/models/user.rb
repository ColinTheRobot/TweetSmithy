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
#to post to twitter
  def tweet(tweet)
    client = Twitter::REST.new do |config|
      config.consumer_key = ENV['TWITTER_KEY_SMITHY']
      config.consumer_secret = ENV['TWITTER_SECRET_SMITHY']
      config.access_token = oauth_token
      config.access_token_secret = oauth_secret
    end
#current_user.tweet(params[tweet_mesage])
    client.update(tweet)
  end

  # def twitter
  #   if provider == "twitter"
  #     @twitter ||= Twitter::Client.new(oauth_token: oauth_token, oauth_token_secret: oauth_secret)
  #   end
  # end
end

#method 1
# def self.oauth(auth)
#  if User.find_by_uid(auth['uid']).nil?
#    @user = User.create({ :uid => auth['uid'], :username => auth['info']['nickname'], :token => auth['credentials']['token'], :secret => auth['credentials']['secret'] })
#  else
#    @user = User.find_by_uid(auth['uid'])
#  end
# end