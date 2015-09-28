Rails.application.routes.draw do
  resources :user do
  resources :posts
  end
end
