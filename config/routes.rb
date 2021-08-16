Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dwarves do
    resources :rents, only: [:new, :create]
  end
  resources :rents, only: [:destroy, :update, :show] do
    resources :reviews, only: [:new, :create]
  end
end
