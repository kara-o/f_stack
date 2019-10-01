Rails.application.routes.draw do

  #root 'questions#index' ??? if not logged in can't post

  resources :comments
  resources :answers
  resources :tags
  resources :questions
  resources :users

  get '/login', to: 'auth#login', as: 'login'
  post '/login', to: 'auth#verify'

end
