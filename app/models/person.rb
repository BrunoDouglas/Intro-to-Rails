class Person < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 16 }

  has_many :vehicleownerships
  has_many :vehicle, through: :vehicleownerships

  belongs_to :neighbourhood

  def vehiclesNumber
    VehicleOwnership.where(:person => self).count
  end
end
