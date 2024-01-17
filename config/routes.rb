Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/create'
  # get 'books/update'
  # delete 'books/destroy'
  resource :session, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
  get 'dashboard', to: 'dashboard#index'  # User's dashboard after login
  resources :books
  

  resources :users
end
