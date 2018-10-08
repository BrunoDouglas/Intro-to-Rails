class Neighbourhood < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  def people
    Person.where(:neighbourhood => self)
  end
end
