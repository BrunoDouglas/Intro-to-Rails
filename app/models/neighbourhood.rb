class Neighbourhood < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  has_many :people
end
