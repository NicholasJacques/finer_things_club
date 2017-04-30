Rails.application.routes.draw do
  resources :cart_items, only: [:destroy, :update]
  resources :items, only: [:index]
  resources :users, only: [:new, :create]

  root :to => 'home#index'

  post '/cart_items', to: 'cart_items#create'
  get '/cart', to: 'cart_items#index', as: :cart
  get '/:category_slug', to: 'categories#show', as: :category
end
