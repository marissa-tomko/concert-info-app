Rails.application.routes.draw do

  get 'concerts/index'

  get 'concerts/show'

  resources :concerts, only: [:index, :new, :show]
  resources :attendances, only: [:index, :new, :create]
  resources :users, only: [:new, :create, :index, :delete]

  root 'concerts#index'
end
