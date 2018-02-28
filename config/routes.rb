Rails.application.routes.draw do
  resources :users
  get 'api_google/index'
  root 'users#index'
end
