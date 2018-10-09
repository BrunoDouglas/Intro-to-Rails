class Vehicle < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  has_many :vehicleownerships
  has_many :people, through: :vehicleownerships

  belongs_to :origin
  belongs_to :manufacturer

  def getOwnersCount
    VehicleOwnership.where(:vehicle => self).count()
  end
end
