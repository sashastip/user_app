Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :records
  resources :records
  get 'search', to: 'search#search'

  resources :articles

  devise_for :users
  root to: 'welcome#index'
end
