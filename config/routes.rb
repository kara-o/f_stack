Rails.application.routes.draw do

  root 'questions#index'

  resources :comments
  resources :answers
  resources :tags
  resources :questions
  resources :users

  get '/login', to: 'auth#login', as: 'login'
  post '/login', to: 'auth#verify'

  get '/logout', to: "auth#logout", as: "logout"



end
