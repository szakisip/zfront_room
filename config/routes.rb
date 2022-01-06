Rails.application.routes.draw do
  devise_for :users
  root to: "talks#index"
  resources :users, only: [:edit, :update]
  resources :talks, only: [:new, :create]
end
