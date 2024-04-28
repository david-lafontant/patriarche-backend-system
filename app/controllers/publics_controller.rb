class PublicsController < ApplicationController
  def home; end

  def about; end

  def show_article
    @article = Article.find(params[:id])
  end

  def publics_articles
    @articles = Article.all
  end

  def show_emission
    @article = Emission.find(params[:id])
  end

  def publics_emissions
    @articles = Emission.all
  end

  def newz; end
end
