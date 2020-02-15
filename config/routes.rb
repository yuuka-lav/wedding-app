Rails.application.routes.draw do
  devise_for :users
  root "top_page#index"
  resources :users, only: [:edit, :update]
  resources :top_page, only: [:index]
  resources :halls, only: [:index]
end
