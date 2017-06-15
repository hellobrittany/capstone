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

  get '/' => 'applications#index'
  get '/applications' => 'applications#index'
  get '/applications/new' => 'applications#new'
  post '/applications' => 'applications#create'
  get '/applications/:id' => 'applications#show'
  get '/applications/:id/edit' => 'applications#edit'
  patch '/applications/:id' => 'applications#update'
  delete '/applications/:id' => 'applications#destroy'

  get '/dwelling_infos' => 'dwelling_infos#index'
  get '/dwelling_infos/new' => 'dwelling_infos#new'
  post '/dwelling_infos' => 'dwelling_infos#create'
  get '/dwelling_infos/:id' => 'dwelling_infos#show'
  get '/dwelling_infos/:id/edit' => 'dwelling_infos#edit'
  patch '/dwelling_infos/:id' => 'dwelling_infos#update'
  delete '/dwelling_infos/:id' => 'dwelling_infos#destroy'

  get '/lifestyle_infos' => 'lifestyle_infos#index'
  get '/lifestyle_infos/new' => 'lifestyle_infos#new'
  post '/lifestyle_infos' => 'lifestyle_infos#create'
  get '/lifestyle_infos/:id' => 'lifestyle_infos#show'
  get '/lifestyle_infos/:id/edit' => 'lifestyle_infos#edit'
  patch '/lifestyle_infos/:id' => 'lifestyle_infos#update'
  delete '/lifestyle_infos/:id' => 'lifestyle_infos#destroy'

  get '/owned_pets' => 'owned_pets#index'
  get '/owned_pets/new' => 'owned_pets#new'
  post '/owned_pets' => 'owned_pets#create'
  get '/owned_pets/:id' => 'owned_pets#show'
  get '/owned_pets/:id/edit' => 'owned_pets#edit'
  patch '/owned_pets/:id' => 'owned_pets#update'
  delete '/owned_pets/:id' => 'owned_pets#destroy'

  get '/ownership_histories' => 'ownership_histories#index'
  get '/ownership_histories/new' => 'ownership_histories#new'
  post '/ownership_histories' => 'ownership_histories#create'
  get '/ownership_histories/:id' => 'ownership_histories#show'
  get '/ownership_histories/:id/edit' => 'ownership_histories#edit'
  patch '/ownership_histories/:id' => 'ownership_histories#update'
  delete '/ownership_histories/:id' => 'ownership_histories#destroy'

  get '/ownership_profiles' => 'ownership_profiles#index'
  get '/ownership_profiles/new' => 'ownership_profiles#new'
  post '/ownership_profiles' => 'ownership_profiles#create'
  get '/ownership_profiles/:id' => 'ownership_profiles#show'
  get '/ownership_profiles/:id/edit' => 'ownership_profiles#edit'
  patch '/ownership_profiles/:id' => 'ownership_profiles#update'
  delete '/ownership_profiles/:id' => 'ownership_profiles#destroy'

  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  post '/dogs' => 'dogs#create'
  get '/dogs/:id' => 'dogs#show'
  get '/dogs/:id/edit' => 'dogs#edit'
  patch '/dogs/:id' => 'dogs#update'
  delete '/dogs/:id' => 'dogs#destroy'

end
