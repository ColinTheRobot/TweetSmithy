Wordnik.configure do |config|
  config.api_key = '0216617c9a267a477c0040dd0140d78aa5cccfaba9f6d78f5'               # required
  config.username = 'coha'                    # optional, but needed for user-related functions
  config.password = 'rousseau'               # optional, but needed for user-related functions
  config.response_format = 'json'             # defaults to json, but xml is also supported
  config.logger = Logger.new('/dev/null')     # defaults to Rails.logger or Logger.new(STDOUT). Set to Logger.new('/dev/null') to disable logging.
end