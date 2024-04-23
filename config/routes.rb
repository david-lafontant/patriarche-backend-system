Rails.application.routes.draw do

  root 'publics#home'
  get 'about', to: 'publics#about'
  get 'newz', to: 'publics#newz'
  devise_for :users
  resources :reportages
end
