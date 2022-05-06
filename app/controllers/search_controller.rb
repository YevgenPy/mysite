class SearchController < ApplicationController
  def search
    if params[:term].nil?
      @result = []
    else
      @result = Searchkick.search(params[:term], models: [Post, Category])
    end
  end
end
