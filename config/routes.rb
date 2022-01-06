Rails.application.routes.draw do
  devise_for :users
  root to: "talks#index"
  resources :users, only: [:edit, :update]
  resources :talks, only: [:new, :create] do
    resource :favorites, only: [:create, :destroy] 
  end
end
