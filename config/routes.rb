Rails.application.routes.draw do

  get 'sessions/new'
  post 'sessions/create', to: 'sessions#create', as: 'login'
  get 'sessions/destroy', as: 'logout'

  resources :cheeses
  resources :users
  root 'application#index'
end
