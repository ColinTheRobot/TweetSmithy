class WordnikController < ApplicationController
  def index
    # initialize_wordnik will set up the @wordnik object, which we can then use to call the wordnik api.
  end

  def search
    query = params[:search_word].split
    @words = {}
    query.each do |word|
      synonyms = Wordnik.word.get_related(word, :type => 'synonym').first["words"]
      @words[word] = synonyms


    end

   # @words = query.map { |word| Wordnik.word.get_related(word, :type => 'hypernym').first["words"] }
  end
end
    
