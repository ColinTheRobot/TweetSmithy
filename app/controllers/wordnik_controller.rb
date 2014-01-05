class WordnikController < ApplicationController
  def index
    # initialize_wordnik will set up the @wordnik object, which we can then use to call the wordnik api.
  end

  def search
    query = params[:search_word] 
    @words = Wordnik.word.get_related(query, :type => 'synonym').first["words"]
  end
end
    # initialize_wordnik

#     if (params[:related_word] || params[:commit]) # user has submitted the form or clicked a link
#       if params[:commit]=="search"
#         @word = Wordnik::Word.find(params[:related_word])
#       end
#       @related = @word.related
#     end
#   end
# end

