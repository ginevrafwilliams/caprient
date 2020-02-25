class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.limit(3).order("RANDOM()").where.not(id: @article)
  end
end
