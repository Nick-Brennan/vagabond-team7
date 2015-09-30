Rails.application.routes.draw do
 
  get 'cities/index'

  get 'cities/:id', to: 'cities#show'

  root to: 'welcome#index'
  get '/sessions/new', to: 'sessions#new'
  get '/posts/:id', to: 'posts#edit'
  post '/sessions', to: 'sessions#create'
  post '/posts/:id', to: 'posts#create'
  patch '/posts/:id', to: 'posts#update'
  delete '/sessions', to: "sessions#destroy"

  resources :users do
  	resources :posts
  end

end