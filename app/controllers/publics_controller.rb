class PublicsController < ApplicationController
  def home; end

  def about; end

  def show_article
    @l_article = Article.find(params[:id])
  end

  def publics_articles
    @les_articles = Article.all
  end

  def show_emission
    @l_emission = Emission.find(params[:id])
  end

  def publics_emissions
    @les_emissions = Emission.all
  end
end
