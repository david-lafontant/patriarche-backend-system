class PublicsController < ApplicationController
  def home; end

  def about; end

  def show
    @article = Reportage.find(params[:id])
  end

  def articles
    @articles = Reportage.all
  end

  def newz; end
end
