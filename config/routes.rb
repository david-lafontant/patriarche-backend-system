Rails.application.routes.draw do
  # get 'publics/home'
  # get 'publics/about'
  # get 'publics/articles'
  # get 'publics/newz'
  devise_for :users
  root 'publics#home'
  get 'about', to: 'publics#about'
  get 'newz', to: 'publics#newz'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
