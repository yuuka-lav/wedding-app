Rails.application.routes.draw do
  devise_for :users
  root "halls#index"
  resources :top_page, only: [:index]
  resources :users, only: [:edit, :update] do
    resources :halls, only: [:index] do
      resources :likes, only: [:create, :destroy]
    end
  end
end
