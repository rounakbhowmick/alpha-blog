Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'about#index'
  # resources :articles, only: %i[show index new create edit update destroy]
  resources :articles
  # get 'about/index'
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
