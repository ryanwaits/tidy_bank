Rails.application.routes.draw do

  root 'dashboards#index'

  resources :parents
  resources :children
  resources :tasks, only: [:create, :update, :destroy]
  resources :sessions, only: [:new]

  get 'parents#kid_show', as: '/kid_show'

end
