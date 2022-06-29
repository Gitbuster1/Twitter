Rails.application.routes.draw do

  root "static_pages#home"
  get '/signup', to: "users#new"
  get '/help', to: "static_pages#help"
  get '/about', to: "static_pages#about"
  get '/contact', to: "static_pages#contact"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/update', to: "users#edit"
  resources :users
  resources :account_activations, only: [:edit]
end
