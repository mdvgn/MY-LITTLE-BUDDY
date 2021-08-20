Rails.application.routes.draw do
  resources :dwarf_skills
  devise_for :users, controllers: {registrations: "users/registrations"}
  root to: 'pages#home'
  resources :dwarves do
    resources :rents, only: [:new, :create]
  end
  resources :rents, only: [:destroy, :update, :show] do
    resources :reviews, only: [:new, :create, :index, :show]
  end
  resources :dwarves do
    resources :dwarf_skills
  end

  resources :rents, only: [:index, :show, :edit, :update]

end
