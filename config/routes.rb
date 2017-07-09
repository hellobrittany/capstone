Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy' 

  
  get '/' => 'pages#index'

  get '/applications' => 'applications#index'
  get '/applications/new' => 'applications#new'
  post '/applications' => 'applications#create'
  get '/applications/:id' => 'applications#show'
  get '/applications/:id/edit' => 'applications#edit'
  patch '/applications/:id' => 'applications#update'
  delete '/applications/:id' => 'applications#destroy'

  get '/applications/:id/dwelling_info' => 'dwelling_infos#index'
  get '/applications/:id/dwelling_info/new' => 'dwelling_infos#new'
  post '/applications/:id/dwelling_info' => 'dwelling_infos#create'
  get '/applications/:id/dwelling_info/:id' => 'dwelling_infos#show'
  get '/applications/:id/dwelling_info/:id/edit' => 'dwelling_infos#edit'
  patch '/applications/:id/dwelling_info/:id' => 'dwelling_infos#update'
  delete '/applications/:id/dwelling_info/:id' => 'dwelling_infos#destroy'

  get '/applications/:id/lifestyle_info' => 'lifestyle_infos#index'
  get '/applications/:id/lifestyle_info/new' => 'lifestyle_infos#new'
  post '/applications/:id/lifestyle_info' => 'lifestyle_infos#create'
  get '/applications/:id/lifestyle_info/:id' => 'lifestyle_infos#show'
  get '/applications/:id/lifestyle_info/:id/edit' => 'lifestyle_infos#edit'
  patch '/applications/:id/lifestyle_info/:id' => 'lifestyle_infos#update'
  delete '/applications/:id/lifestyle_info/:id' => 'lifestyle_infos#destroy'

  get '/owned_pets' => 'owned_pets#index'
  get '/owned_pets/new' => 'owned_pets#new'
  post '/owned_pets' => 'owned_pets#create'
  get '/owned_pets/:id' => 'owned_pets#show'
  get '/owned_pets/:id/edit' => 'owned_pets#edit'
  patch '/owned_pets/:id' => 'owned_pets#update'
  delete '/owned_pets/:id' => 'owned_pets#destroy'

  get '/applications/:id/ownership_history' => 'ownership_histories#index'
  get '/applications/:id/ownership_history/new' => 'ownership_histories#new'
  post '/applications/:id/ownership_history' => 'ownership_histories#create'
  get '/applications/:id/ownership_history/:id' => 'ownership_histories#show'
  get '/applications/:id/ownership_history/:id/edit' => 'ownership_histories#edit'
  patch '/applications/:id/ownership_history/:id' => 'ownership_histories#update'
  delete '/applications/:id/ownership_history/:id' => 'ownership_histories#destroy'

  get '/applications/:id/ownership_profile' => 'ownership_profiles#index'
  get '/applications/:id/ownership_profile/new' => 'ownership_profiles#new'
  post '/applications/:id/ownership_profile' => 'ownership_profiles#create'
  get '/applications/:id/ownership_profile/:id' => 'ownership_profiles#show'
  get '/applications/:id/ownership_profile/:id/edit' => 'ownership_profiles#edit'
  patch '/applications/:id/ownership_profile/:id' => 'ownership_profiles#update'
  delete '/applications/:id/ownership_profile/:id' => 'ownership_profiles#destroy'

  
  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  post '/dogs' => 'dogs#create'
  get '/dogs/:id' => 'dogs#show'
  get '/dogs/:id/edit' => 'dogs#edit'
  patch '/dogs/:id' => 'dogs#update'
  delete '/dogs/:id' => 'dogs#destroy'

  namespace :api do
    namespace :v1 do
      patch '/applications/:id' => 'applications#update'
      patch '/applications/:id/dwelling_info/:id' => 'dwelling_infos#update'
      patch '/applications/:id/lifestyle_info/:id' => 'lifestyle_infos#update'
      get '/owned_pets' => 'owned_pets#index'
      get '/owned_pets/new' => 'owned_pets#new'
      post '/owned_pets' => 'owned_pets#create'
      get '/owned_pets/:id' => 'owned_pets#show'
      get '/owned_pets/:id/edit' => 'owned_pets#edit'
      patch '/owned_pets/:id' => 'owned_pets#update'
      delete '/owned_pets/:id' => 'owned_pets#destroy'
      patch '/applications/:id/ownership_history/:id' => 'ownership_histories#update'
      patch '/applications/:id/ownership_profile/:id' => 'ownership_profiles#update'
    end
  end

end


