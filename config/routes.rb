Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  resources :joiners
  resources :items
  resources :orders
  resources :categories
  resources :users
  resources :reviews

  post '/login', to: "users#login"
  get '/keep_logged_in', to: "users#keep_logged_in"
  get '/profile', to: "users#profile"
  get '/users/:id', to: "users#show"
  # didnt have a route to transform action
  patch '/orders/:id/transform', to: "orders#transform"

  post '/charges', to: 'charges#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
