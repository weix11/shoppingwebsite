Rails.application.routes.draw do
  resources :colors
  resources :orders
  resources :collections
  devise_for :users
  resources :carts
  resources :products
  resources :products, only: [] do
    resources :carts, only: [ :create ]
    resources :collections, only: [ :create ]
  end
  root 'welcome#index'
  get '/pd/:id', to: 'products#info', as: 'pd'
  get '/show', to: 'carts#info', as: 'show_cart'
  get '/showcollections', to: 'collections#info', as: 'show_collection'
  get '/jiesuan', to: 'carts#jiesuan', as: 'jiesuan'
  get '/success', to: 'carts#success', as: 'success'
end
