Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :products
  end

  resources :products do
    collection do
      post :checkout
      post :add_to_cart
    end
  end

  resources :carts
  resources :orders

  root 'products#index'

end
