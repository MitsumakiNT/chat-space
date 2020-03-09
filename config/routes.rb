Rails.application.routes.draw do
  resources :products
  devise_for :users
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :update, :edit, :index]
end
