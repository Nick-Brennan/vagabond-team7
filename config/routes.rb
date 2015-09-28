Rails.application.routes.draw do
<<<<<<< HEAD
  resources :user do
  resources :posts
  end
=======
 
  root to: 'welcome#index'
  get 'sessions/new', to: 'sessions#new', as: 'sign_in'
  post 'sessions', to: 'sessions#create'
  delete 'sessions', to: 'sessions#delete'

  resources :user do
  resources :posts
  end

>>>>>>> 07f2945ec7c3ffb24827f01a3d393f6b49c84b8f
end
