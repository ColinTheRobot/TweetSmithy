class SmithyController < ApplicationController

  def index
    binding.pry
  end

  def search
    get_synonyms

    respond_to do |format|
      format.html {render :index}
      format.json { render json: @words}
    end
  end

  private

  def get_synonyms
    split_params
  end

  def split_params
   @parsed_query = params[:search_word].split
   remove_symbols
  end

  def remove_symbols
    @parsed_query.each do |word|
      word.gsub!(/\W|\d/, '')
    end
    clean_words
  end

  def clean_words
    @parsed_query.delete_if do |word|
      word.length < 3 || word.blank?
    end
    wordnik_query
  end

  def wordnik_query
    @words = {}
    @parsed_query.each do |word|
      synonyms = Wordnik.word.get_related(word, type: 'synonym')

      @words[word] = synonyms.first['words'] unless synonyms.empty?
    end
    parse_synonyms
  end

  def parse_synonyms
    @words.each_key do |word|
      length_of_word = word.length
      
      @words["#{word}"].delete_if do |syn|
        syn.length >= length_of_word
      end
    end
    remove_empties
  end

  def remove_empties
    @words.delete_if { |key, value| value.blank? }
  end
end
