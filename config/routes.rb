Rails.application.routes.draw do
  resources :items, only: [:index]

  get '/:category_slug', to: 'categories#show', as: :category
end
