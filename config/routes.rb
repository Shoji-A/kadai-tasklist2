Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root to: 'tasks#index'
  
  resources :tasks
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
