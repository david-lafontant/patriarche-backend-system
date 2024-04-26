Rails.application.routes.draw do

  root 'publics#home'
  get 'about', to: 'publics#about'
  get 'newz', to: 'publics#newz'
  resources :contact_form, only: %i[new create]
  devise_for :users
  resources :reportages
end
