Wordnik.configure do |config|
  config.api_key = ENV['WORDNIK_API_KEY']
  config.username = 'coha'
  config.password = 'rousseau'
  config.response_format = 'json'
  config.logger = Logger.new('/dev/null')
end
