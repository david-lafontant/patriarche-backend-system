Rails.application.routes.draw do

  root 'publics#home'
  get 'about', to: 'publics#about'
  get 'published_articles', to: 'publics#publics_articles'
  get 'published_articles/:id', to: 'publics#show_article', as: 'un_article'
  get 'published_emissions', to: 'publics#publics_emissions'
  get 'published_emissions/:id', to: 'publics#show_emission', as: 'une_emission'
  devise_for :users
  resources :articles
  resources :media
  resources :emissions
  resources :contact_form, only: %i[new create]
  # get 'published.articles', to: 'publics#publics_articles'
  # get '/published.articles/:id', to: 'publics#show_article', as: 'article'
end
