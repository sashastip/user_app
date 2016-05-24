Rails.application.routes.draw do
  
  get 'search', to: 'search#search'

  resources :articles

  devise_for :users
  root to: 'welcome#index'
end
