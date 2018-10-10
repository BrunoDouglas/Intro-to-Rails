class Vehicle < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :manufacturer,  presence: true
  validates :origin,  presence: true

  has_many :vehicleownerships
  has_many :owners, through: :vehicleownerships

  def getOwnersCount
    VehicleOwnership.where(:vehicle => self).count()
  end
end
