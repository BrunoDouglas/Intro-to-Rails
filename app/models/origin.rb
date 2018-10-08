class Origin < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  def vehicles
    Person.where(:origin => self)
  end
end
