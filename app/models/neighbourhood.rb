class Neighbourhood < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  def people
    Person.where(:neighbourhood => self)
  end

  def vehicles
    people = Person.where(:neighbourhood => self)

    vehicles VehicleOwnership.where(:person => people)
  end
end
