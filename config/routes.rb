Rails.application.routes.draw do
  resources :connections
  resources :airline_connections
  resources :airlines
  resources :bookings
  resources :travellers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
