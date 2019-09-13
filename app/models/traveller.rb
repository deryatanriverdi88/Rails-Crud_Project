class Traveller < ApplicationRecord
  has_many :bookings
  has_many :connections, through: :bookings

  validates :name, presence: true
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :password, length: {in: 4..20}

  has_secure_password
end
