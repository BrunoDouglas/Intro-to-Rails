class Residency < ApplicationRecord
  belongs_to :person
  belongs_to :neighbourhood
end
