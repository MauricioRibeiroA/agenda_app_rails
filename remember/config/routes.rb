Rails.application.routes.draw do
   
  get 'welcome/index'
  root 'welcome#index'
  resources :friends
  resources :annotations


end

GifVault::Application.routes.draw do

  root to: 'gif#cool'

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  get '/signup' => 'user#new'
  post '/users' => 'user#create'
  
end

