Rails.application.routes.draw do

  resources :concerts, only: [:index, :new, :show]
  resources :attendances, only: [:index, :new, :create]
  resources :users, only: [:new, :create, :index, :delete]
  resources :sessions, only: [:new, :create, :destroy]

  root 'concerts#index'
end
