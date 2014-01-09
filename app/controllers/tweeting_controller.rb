class TweetingController < ApplicationController
  require 'twitter'

#method 1
  # def post
  #   @post = Tweet.new(params[:post])
  #   Twitter.update "Tweet"
  #  # @tweeting = Tweet.new
  # end

  #method 2
  def new
  end

  def create
    current_user.tweet(twitter_params)[:message]
    # current_user.tweet(params[tweet_mesage])
  end

  def twitter_params
    params.require(:tweet).permit(:message)
  end
end

