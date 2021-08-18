Rails.application.routes.draw do
  get 'dwarf_skills/new'
  get 'dwarf_skills/create'
  get 'dwarf_skills/edit'
  get 'dwarf_skills/update'
  get 'dwarf_skills/destroy'
  devise_for :users
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
  resources :users do
    resources :rents, only: [:index, :show]
  end
end
