class Person < ApplicationRecord
  has_many :personneibourhoods
  has_many :neibourhoods, through: :personneibourhoods
end
