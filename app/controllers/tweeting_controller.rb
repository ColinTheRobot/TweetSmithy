class TweetingController < ApplicationController
  require 'twitter'


#method 1
  # def post
  #   @post = Tweet.new(params[:post])
  #   current_user.update "Tweet"
  #   @tweeting = Tweet.new
  # end

  #method 2
  def new
    @tweet = Tweet.new
  end

  def create
    current_user.tweet(params[:message])
    
  # current_user.upda(twitter_params[:message])
  #  @tweet = Tweet.new(twitter_params)[:message]
    
  end

  def twitter_params
    params.require(:tweet).permit(:mesage)
  end
end

