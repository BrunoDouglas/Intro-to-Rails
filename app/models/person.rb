class Person < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 16 }

  belongs_to :neighbourhood
end
