Rails.application.routes.draw do

  root 'questions#index'

  resources :comments, only: [:new, :create, :show, :edit, :update]
  get '/comments/:id/delete', to: 'comments#delete_status', as: 'delete_comment'

  resources :answers, only: [:new, :create, :show, :edit, :update]
  get '/answers/:id/delete', to: 'answers#delete_status', as: 'delete_answer'

  resources :questions, only: [:new, :create, :show, :edit, :update]
  get '/questions/:id/delete', to: 'questions#delete_status', as: 'delete_question'

  resources :tags
  resources :users
  resources :votes

  get '/login', to: 'auth#login', as: 'login'
  post '/login', to: 'auth#verify'

  get '/logout', to: "auth#logout", as: "logout"


end
