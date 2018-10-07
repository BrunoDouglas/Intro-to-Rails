class Neighbourhood < ApplicationRecord
  has_many :residencies
  has_many :people, through: :residencies
end
