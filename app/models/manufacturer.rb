class Manufacturer < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  def vehicles
    Person.where(:manufacturer => self)
  end
end
