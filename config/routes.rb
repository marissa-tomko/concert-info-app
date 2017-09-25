Rails.application.routes.draw do

  resources :concerts, only: [:index, :new, :show]
  resources :attendances, only: [:index, :new, :create]
  resources :users, only: [:new, :create, :delete]
  resources :sessions, only: [:new, :create, :destroy]

  # Roger helped me with a weird form problem he, Erika and I had a hell of a time figuring out. Would like to go over login again to see if code review can explain issue!
  post '/login' => 'sessions#create'

  # Custom, correct?
  get '/logout', to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'

  root 'concerts#index'
end
