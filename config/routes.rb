Rails.application.routes.draw do
 
  root to: 'welcome#index'
  get 'sign_in', to: 'sessions#new'
  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#delete'

  resources :user do
  resources :posts
  end

end
