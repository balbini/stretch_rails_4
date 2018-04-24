Rails.application.routes.draw do
  root "users#index"

  resources :users

  resources :adults

  resources :seniors

  resources :youths

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
