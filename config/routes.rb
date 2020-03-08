# frozen_string_literal: true

Rails.application.routes.draw do
  # Resources
  root to: 'home#home'
  resources :comments
  resources :users
  resources :articles
  # Navigation
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  get '/signup', to: 'users#new'
  # Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
