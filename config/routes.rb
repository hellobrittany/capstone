Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/' => 'applications#index'
  get '/applications' => 'applications#index'
  get '/applications/new' => 'applications#new'
  post '/applications' => 'applications#create'

  


end
