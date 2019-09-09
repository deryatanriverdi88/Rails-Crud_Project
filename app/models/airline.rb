class Airline < ApplicationRecord
  has_many :bookings
  has_many :airline_connections
  has_many :connections, through: :airline_connections
end
