class Vehicle < ApplicationRecord
  has_many :vehicleownerships
  has_many :people, through: :vehicleownerships

  belongs_to :vehicleorigin
  belongs_to :vehiclemake
  belongs_to :person
end
