# == Route Map
#

Rails.application.routes.draw do
  get 'my_schedule', to: 'my_schedule#index'
  get 'admin', to: 'admin#index'
  devise_for :users, controllers: { sessions: 'custom_sessions'}
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :gaming_years
  resources :gaming_library, only: [:index]
  resources :library_games, except: [:index]

  resources :users
  resources :events do
    member do
      get 'duplicate'
      get 'send_discord_notice'
    end
    collection do
      post 'validate_time'
    end
  end
  resources :notices
  resources :seats

  get "/service-worker.js" => "service_worker#service_worker"
  get "/manifest.json" => "service_worker#manifest"
end

