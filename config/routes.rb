Rails.application.routes.draw do

  root 'publics#home'
  get 'about', to: 'publics#about'
  get 'newz', to: 'publics#newz'
  get 'articles', to: 'publics#articles'
  get '/articles/:id', to: 'publics#show', as: 'article'
  resources :contact_form, only: %i[new create]
  devise_for :users
  resources :reportages
end
