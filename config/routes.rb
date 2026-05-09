# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                              new_session GET    /session/new(.:format)                                                                            sessions#new
#                             edit_session GET    /session/edit(.:format)                                                                           sessions#edit
#                                  session GET    /session(.:format)                                                                                sessions#show
#                                          PATCH  /session(.:format)                                                                                sessions#update
#                                          PUT    /session(.:format)                                                                                sessions#update
#                                          DELETE /session(.:format)                                                                                sessions#destroy
#                                          POST   /session(.:format)                                                                                sessions#create
#                         new_passwordless GET    /passwordless/new(.:format)                                                                       passwordlesses#new
#                        edit_passwordless GET    /passwordless/edit(.:format)                                                                      passwordlesses#edit
#                             passwordless GET    /passwordless(.:format)                                                                           passwordlesses#show
#                                          PATCH  /passwordless(.:format)                                                                           passwordlesses#update
#                                          PUT    /passwordless(.:format)                                                                           passwordlesses#update
#                                          DELETE /passwordless(.:format)                                                                           passwordlesses#destroy
#                                          POST   /passwordless(.:format)                                                                           passwordlesses#create
#                            one_time_pass GET    /one_time_pass/:uuid/:token(.:format)                                                             session#passwordless_login
#                                passwords GET    /passwords(.:format)                                                                              passwords#index
#                                          POST   /passwords(.:format)                                                                              passwords#create
#                             new_password GET    /passwords/new(.:format)                                                                          passwords#new
#                            edit_password GET    /passwords/:token/edit(.:format)                                                                  passwords#edit
#                                 password GET    /passwords/:token(.:format)                                                                       passwords#show
#                                          PATCH  /passwords/:token(.:format)                                                                       passwords#update
#                                          PUT    /passwords/:token(.:format)                                                                       passwords#update
#                                          DELETE /passwords/:token(.:format)                                                                       passwords#destroy
#                              my_schedule GET    /my_schedule(.:format)                                                                            my_schedule#index
#                                    admin GET    /admin(.:format)                                                                                  admin#index
#                                     root GET    /                                                                                                 home#index
#                             gaming_years GET    /gaming_years(.:format)                                                                           gaming_years#index
#                                          POST   /gaming_years(.:format)                                                                           gaming_years#create
#                          new_gaming_year GET    /gaming_years/new(.:format)                                                                       gaming_years#new
#                         edit_gaming_year GET    /gaming_years/:id/edit(.:format)                                                                  gaming_years#edit
#                              gaming_year GET    /gaming_years/:id(.:format)                                                                       gaming_years#show
#                                          PATCH  /gaming_years/:id(.:format)                                                                       gaming_years#update
#                                          PUT    /gaming_years/:id(.:format)                                                                       gaming_years#update
#                                          DELETE /gaming_years/:id(.:format)                                                                       gaming_years#destroy
#                     gaming_library_index GET    /gaming_library(.:format)                                                                         gaming_library#index
#                            library_games POST   /library_games(.:format)                                                                          library_games#create
#                         new_library_game GET    /library_games/new(.:format)                                                                      library_games#new
#                        edit_library_game GET    /library_games/:id/edit(.:format)                                                                 library_games#edit
#                             library_game GET    /library_games/:id(.:format)                                                                      library_games#show
#                                          PATCH  /library_games/:id(.:format)                                                                      library_games#update
#                                          PUT    /library_games/:id(.:format)                                                                      library_games#update
#                                          DELETE /library_games/:id(.:format)                                                                      library_games#destroy
#                                    users GET    /users(.:format)                                                                                  users#index
#                                          POST   /users(.:format)                                                                                  users#create
#                                 new_user GET    /users/new(.:format)                                                                              users#new
#                                edit_user GET    /users/:id/edit(.:format)                                                                         users#edit
#                                     user GET    /users/:id(.:format)                                                                              users#show
#                                          PATCH  /users/:id(.:format)                                                                              users#update
#                                          PUT    /users/:id(.:format)                                                                              users#update
#                                          DELETE /users/:id(.:format)                                                                              users#destroy
#                          duplicate_event GET    /events/:id/duplicate(.:format)                                                                   events#duplicate
#                send_discord_notice_event GET    /events/:id/send_discord_notice(.:format)                                                         events#send_discord_notice
#                     validate_time_events POST   /events/validate_time(.:format)                                                                   events#validate_time
#                                   events GET    /events(.:format)                                                                                 events#index
#                                          POST   /events(.:format)                                                                                 events#create
#                                new_event GET    /events/new(.:format)                                                                             events#new
#                               edit_event GET    /events/:id/edit(.:format)                                                                        events#edit
#                                    event GET    /events/:id(.:format)                                                                             events#show
#                                          PATCH  /events/:id(.:format)                                                                             events#update
#                                          PUT    /events/:id(.:format)                                                                             events#update
#                                          DELETE /events/:id(.:format)                                                                             events#destroy
#                                  notices GET    /notices(.:format)                                                                                notices#index
#                                          POST   /notices(.:format)                                                                                notices#create
#                               new_notice GET    /notices/new(.:format)                                                                            notices#new
#                              edit_notice GET    /notices/:id/edit(.:format)                                                                       notices#edit
#                                   notice GET    /notices/:id(.:format)                                                                            notices#show
#                                          PATCH  /notices/:id(.:format)                                                                            notices#update
#                                          PUT    /notices/:id(.:format)                                                                            notices#update
#                                          DELETE /notices/:id(.:format)                                                                            notices#destroy
#                                    seats GET    /seats(.:format)                                                                                  seats#index
#                                          POST   /seats(.:format)                                                                                  seats#create
#                                 new_seat GET    /seats/new(.:format)                                                                              seats#new
#                                edit_seat GET    /seats/:id/edit(.:format)                                                                         seats#edit
#                                     seat GET    /seats/:id(.:format)                                                                              seats#show
#                                          PATCH  /seats/:id(.:format)                                                                              seats#update
#                                          PUT    /seats/:id(.:format)                                                                              seats#update
#                                          DELETE /seats/:id(.:format)                                                                              seats#destroy
#                                          GET    /service-worker.js(.:format)                                                                      service_worker#service_worker
#                                          GET    /manifest.json(.:format)                                                                          service_worker#manifest
#         turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
#         turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
#        turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#        new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
# rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create

Rails.application.routes.draw do
  get "registration/index"
  resource :session
  resource :passwordless

  get "/one_time_pass/:uuid/:token" => "sessions#passwordless_login", as: :one_time_pass

  resources :passwords, param: :token
  get 'my_schedule', to: 'my_schedule#index'
  get 'admin', to: 'admin#index'

  get 'user_registration', to: 'registration#new', as: :new_user_registration, param: :key
  post 'register_user', to: 'registration#create', as: :register

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

  mount SolidErrors::Engine, at: "/solid_errors"
  
end

