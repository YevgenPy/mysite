Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    devise_for :users
    root "pages#index"

    get 'search', to: 'search#search'

    resources :categories
    resources :posts
  end
end
