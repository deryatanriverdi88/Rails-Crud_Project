class Connection < ApplicationRecord
  has_many :airline_connections
  has_many :airlines, through: :airline_connections
  has_many :bookings
  has_many :travellers, through: :bookings


  def full_connection
    "#{location_1} to #{location_2}"
  end

  def booking_details
    "#{self.location_1} to #{self.location_2}"
  end




end
