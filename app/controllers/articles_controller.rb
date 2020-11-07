class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id]) #storing the article record in an instance var, this allows the edit view template to have access to the Article object
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end

  ##raise params.inspect #the raise method -- causes the app to pause and print out the params on an error page
    #the params are being passed to update action so that it will take the form data and update the specified record
end
