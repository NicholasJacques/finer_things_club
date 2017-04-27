Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :cart_items, only: [:destroy]

  post '/cart_items', to: 'cart_items#create'
  get '/cart', to: 'cart_items#index', as: :cart
  get '/:category_slug', to: 'categories#show', as: :category
end
