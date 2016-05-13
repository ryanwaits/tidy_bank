Rails.application.routes.draw do

  root 'dashboards#index'

  resources :parents
  resources :children, only: [:index, :new]
  resources :tasks, only: [:show, :new, :create, :update, :destroy]
  
  get 'login',  to: 'sessions#new'
  post 'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'child/login',  to: 'child_sessions#new'
  post 'child/login',  to: 'child_sessions#create'
  delete 'child/logout', to: 'child_sessions#destroy'


end
