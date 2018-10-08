class Neighbourhood < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  def people
    Person.where(:neighbourhood => self)
  end

  def vehicles
    VehicleOwnership.where(:person => people)
  end
end
