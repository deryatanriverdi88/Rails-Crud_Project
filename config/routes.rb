Rails.application.routes.draw do
  resources :connections
  resources :airline_connections
  resources :airlines
  resources :bookings
  resources :travellers
  resources :login, only: [:new, :create]
  delete "/logout", to: "login#destroy", as: "logout"
  post '/airline_connections/choose', to: 'airline_connections#choose'
  post '/connections/choose', to: 'connections#choose'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
