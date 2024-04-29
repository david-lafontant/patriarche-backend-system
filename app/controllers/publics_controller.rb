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
    @emission = Emission.find(params[:id])
  end

  def publics_emissions
    @emissions = Emission.all
  end
end
