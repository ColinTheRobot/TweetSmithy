class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
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