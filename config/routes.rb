Rails.application.routes.draw do

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
  patch '/orders/:id/transform', to: "orders#transform"
  get 'charges/new'
  get 'charges/create'
  post '/charges', to: 'charges#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
