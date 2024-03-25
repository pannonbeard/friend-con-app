# == Route Map
#

Rails.application.routes.draw do
  get 'my_schedule', to: 'my_schedule#index'
  get 'admin', to: 'admin#index'
  devise_for :users
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :gaming_years
  resources :users
  resources :events do
    member do
      get 'duplicate'
    end
    collection do
      post 'validate_time'
    end
  end
  resources :notices
  resources :seats
end

