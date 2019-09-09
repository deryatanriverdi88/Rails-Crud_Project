class Connection < ApplicationRecord
  has_many :airline_connections
  has_many :airlines, through: :airline_connections
end
