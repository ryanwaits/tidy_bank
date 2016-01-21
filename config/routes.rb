Rails.application.routes.draw do

  root 'dashboards#index'

  resources :parents
  resources :children
  resources :tasks, only: [:create, :update, :destroy]
  resources :sessions, only: [:new]
  get 'login',  to: 'sessions#new'
  post 'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'



end
