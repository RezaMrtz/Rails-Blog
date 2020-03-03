# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  resources :users
  root to: 'home#home'
  get '/about', to: 'home#about'
  get '/signup', to: 'users#new'
  resources :articles
  # Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
