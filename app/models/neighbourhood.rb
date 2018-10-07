class Neighbourhood < ApplicationRecord
  has_many :personneibourhoods
  has_many :people, through: :personneibourhoods
end
