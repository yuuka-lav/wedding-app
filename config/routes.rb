Rails.application.routes.draw do
  devise_for :users
  root "halls#index"

  resources :toppages, only: [:index]
  resources :users, only: [:edit, :update]
  resources :halls, only: [:index] 

end
