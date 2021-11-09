class ArticlesController < ApplicationController
before_action :find_article, only: [:show, :edit, :destroy, :update]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Task.new(article_params)
    @article.save
    redirect_to article_path(@task)
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@task)
  end

  def destroy
    @article.destory
  end

  def edit; end

  def show; end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
