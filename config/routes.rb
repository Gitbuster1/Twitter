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
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
