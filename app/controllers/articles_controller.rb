class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles = Article.order(created_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.limit(3).order("RANDOM()").where.not(id: @article)
  end
end
