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

  def twitter
    if provider == "twitter"
      @twitter ||= Twitter::Client.new(oauth_token: oauth_token, oauth_token_secret: oauth_secret)
  end
end
end

#
# def self.oauth(auth)
#  if User.find_by_uid(auth['uid']).nil?
#    @user = User.create({ :uid => auth['uid'], :username => auth['info']['nickname'], :token => auth['credentials']['token'], :secret => auth['credentials']['secret'] })
#  else
#    @user = User.find_by_uid(auth['uid'])
#  end
# end