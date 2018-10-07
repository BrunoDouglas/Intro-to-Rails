class Vehicle < ApplicationRecord
  has_many :vehicleownerships
  has_many :people, through: :vehicleownerships

  belongs_to :vehicletype
  belongs_to :vehiclemake
  belongs_to :person
end
