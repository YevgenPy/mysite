Rails.application.routes.draw do
  devise_for :users
  root "categories#index"

  get 'search', to: 'search#search'

  resources :categories
  resources :posts
end
