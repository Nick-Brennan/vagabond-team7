Rails.application.routes.draw do
 
  get 'cities/index'

  get 'cities/show'

  root to: 'welcome#index'
  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: "sessions#destroy"

  resources :users do
  resources :posts
  end

end