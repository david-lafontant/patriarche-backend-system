Rails.application.routes.draw do
  # get 'publics/home'
  # get 'publics/about'
  # get 'publics/articles'
  # get 'publics/newz'
  devise_for :users
  root 'publics#home'
  resources :contents
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: 'publics#about'
  get 'articles', to: 'publics#articles'
  get 'newz', to: 'publics#newz'
  # Defines the root path route ("/")
  # root "articles#index"
end
