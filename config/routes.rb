Rails.application.routes.draw do
  devise_for :users
  # get 'posts/index'
  root "posts#index"
  resources :users, only: [:create, :new,:edit ,:update]
  resources :posts, only: [:new, :create]
end
