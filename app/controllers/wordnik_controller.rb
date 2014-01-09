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
    
    #working code below
# class WordnikController < ApplicationController
#   def index
#     # initialize_wordnik will set up the @wordnik object, which we can then use to call the wordnik api.
#   end

#   def search
#     query = params[:search_word].split
#     @words = {}
#     query.each do |word|
#       synonyms = Wordnik.word.get_related(word, :type => 'synonym').first["words"]
#       @words[word] = synonyms
#     end
#       # @words.each do |key, value| 
#       # puts "The word #{key}: has the synonyms #{value}"
#     # end
#   end
# end
    
