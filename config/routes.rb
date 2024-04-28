Rails.application.routes.draw do

  root 'publics#home'
  get 'about', to: 'publics#about'
  get 'newz', to: 'publics#newz'
  get 'published.articles', to: 'publics#publics_articles'
  get '/published.articles/:id', to: 'publics#show_article'
  get 'published.emissions', to: 'publics#publics_emissions'
  get '/published.emissions/:id', to: 'publics#show_emission'
  devise_for :users
  resources :articles
  resources :media
  resources :emissions
  resources :contact_form, only: %i[new create]
  # get 'published.articles', to: 'publics#publics_articles'
  # get '/published.articles/:id', to: 'publics#show_article', as: 'article'
end
