class Person < ApplicationRecord
  has_many :residencies
  has_many :neibourhoods, through: :residencies
end
