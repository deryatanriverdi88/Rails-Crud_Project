class AirlineConnection < ApplicationRecord
  belongs_to :connection
  belongs_to :airline

  def full_connection
    "#{self.connection.location_1} to #{self.connection.location_2} with #{self.airline.name} for $#{self.price}"
  end

end
