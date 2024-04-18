class PublicsController < ApplicationController
  def home; end

  def about; end

  def show
    @reportage = Article.find(params[:id])
  end

  def reportages
    @reportages = Article.all
  end

  def newz; end
end
