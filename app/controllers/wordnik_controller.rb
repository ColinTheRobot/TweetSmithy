class WordnikController < ApplicationController
  def index
  end

  def search
    words = {}

    parsed_query.each do |word|
      synonyms = Wordnik.word.get_related(word, type: 'synonym')

      words[word] = synonyms.first['words'] unless synonyms.empty?
    end
  end


  private

  def parsed_query
    params[:search_word].split
  end
end
