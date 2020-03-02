Rails.application.routes.draw do
  devise_for :users
  root "halls#index"
  resources :users, only: [:edit, :update]
  resources :top_page, only: [:index]
  resources :halls, only: [:index] do
    collection do
      get 'search'
    end
  end
  post   '/like/:hall_id' => 'likes#like',   as: 'like'
  delete '/like/:hall_id' => 'likes#unlike', as: 'unlike'
end
