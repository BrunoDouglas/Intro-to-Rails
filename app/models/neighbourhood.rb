class Neighbourhood < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  def owners
    Owner.where(:neighbourhood => self)
  end

  def vehicles
    VehicleOwnership.where(:owner => owners)
  end
end
