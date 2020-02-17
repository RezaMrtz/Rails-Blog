# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#home'
  get '/about', to: 'home#about'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
