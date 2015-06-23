Rails.application.routes.draw do
  resources :cheeses
  resources :users
  root 'application#index'
end
