Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "documents#index"
# get '/' => "documents#index"
# get '/documents/new' => "documents#new"

  resources :documents
  # , only: [:index,:show, :new, :create ]

end
