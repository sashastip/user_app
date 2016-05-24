class ArticlesController < ApplicationController
  def index
    @articles = Articles.all
  end

  def show
    @article = Article.find[:id]
  end

  def new
  end
  
  def create
    @article = Article.new

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit :title, :text
    end
end