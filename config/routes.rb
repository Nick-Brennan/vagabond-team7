Rails.application.routes.draw do
 
  root to: 'welcome#index'
  get '/sessions/new', to: 'sessions#new', as: 'sign_in'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: "sessions#destroy"

  resources :users do
  resources :posts
  end

end