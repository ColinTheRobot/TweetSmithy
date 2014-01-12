AWS::Twitter::Base.establish_connection!(
  :access_key_id     => ENV['TWITTER_KEY_SMITHY']
  :secret_access_key => ENV['TWITTER_SECRET_SMITHY']
  )