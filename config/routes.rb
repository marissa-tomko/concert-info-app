Rails.application.routes.draw do

  resources :concerts, only: [:index, :new, :show]
  resources :attendances, only: [:index, :new, :create]
  resources :users, only: [:new, :create, :delete]
  resources :sessions, only: [:new, :create, :destroy]

  post '/login' => 'sessions#create'

  root 'concerts#index'
end
