Rails.application.routes.draw do
  devise_for :users
    root to: "introductions#index"
    resources :investers, only: [:index,:show]
    resources :users, only: [:show,:update]

  end