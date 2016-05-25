class SearchController < ApplicationController
  def search
    @articles = Article.search params[:q]
    
    respond_to do |format|
      if params[:q].nil?
        @article = []
        format.html { @article }
        format.js {}
      else
        format.html { @article }
        format.js {}
      end
    end
  end
end
