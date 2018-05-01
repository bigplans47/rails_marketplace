Rails.application.routes.draw do
  root :to => 'products#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :products
  resources :order_items
  resource :cart, only: [:show]
  # resource :books, only: [:index, :show, :create, :destroy, :update
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
