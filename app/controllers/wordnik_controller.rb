class WordnikController < ApplicationController
  def index
    # initialize_wordnik will set up the @wordnik object, which we can then use to call the wordnik api.
  end

  def search
    query = params[:search_word].split
    @words = {}
    query.each do |word|
      wordnik_results = Wordnik.word.get_related(word, :type => 'synonym')
      unless wordnik_results.empty?
        @words[word] = wordnik_results.first['words']
      end
    end
  end
end
