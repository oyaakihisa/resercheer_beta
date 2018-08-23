Rails.application.routes.draw do
  
  devise_for :users
  root  'tweets#index'    
  resources :tweets do
    resources :comments, only: [:create]
    resources :adds, only: [:create]
    resources :cheers, only: [:new,:create]
  end
  resources :users, only: [:show]  
end