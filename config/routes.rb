Rails.application.routes.draw do
  devise_for :users
  # get 'posts/index'
  root "posts#index"
  resources :users, only: [:create, :new,:edit ,:update, :show]
  resources :posts, except: :index
end
