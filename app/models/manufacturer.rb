class Manufacturer < ApplicationRecord
  validates :name, uniqueness: true, presence: true
end
