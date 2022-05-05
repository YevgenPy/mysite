class SearchController < ApplicationController
  def search
    if params[:term].nil?
      @categories = []
    else
      @categories = Category.search params[:term]
    end
  end
end
