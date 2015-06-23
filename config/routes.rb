Rails.application.routes.draw do
  get 'sessions/new'

  resources :cheeses
  resources :users
  root 'application#index'
end
