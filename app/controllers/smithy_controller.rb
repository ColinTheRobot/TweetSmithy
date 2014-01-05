class SmithyController < ApplicationController

  def index
     #@synonyms = Wordnik.word.get_related
  end

  # def create
  #   @post = Post.new(params[:post])
  #   Twitter.update("I'm tweeting with @gem!")
  #   #code
  # end

  def initialize_wordnik(options={})
  options.merge!(ENV['WORDNIK_API_KEY'])
    @wordnik = Wordnik::Wordnik.new(options)
  end


  
end
