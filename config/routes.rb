Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    devise_for :users
    root "categories#index"

    get 'search', to: 'search#search'

    resources :categories
    resources :posts
  end
end
