class AirlineConnection < ApplicationRecord
  belongs_to :connection
  belongs_to :airline
end
