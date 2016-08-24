Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "documents#index"
# get '/' => "documents#index"
# get '/documents/new' => "documents#new"

  resources :documents

  get '/users/new' => 'users#new'
  post '/users' => 'users#create'

  get '/sessions/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'

  get 'sessions/logout' => 'sessions#destroy'
end
