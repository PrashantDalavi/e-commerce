# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products do
    resources :comments
  end
  resources :orders, only: %i[index show create destroy]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  # get '/products', to: 'product#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'simple_pages#landing_page'
  root 'simple_pages#landing_page'

  post 'payments/create'
end
