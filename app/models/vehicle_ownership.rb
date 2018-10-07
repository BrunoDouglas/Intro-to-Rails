class VehicleOwnership < ApplicationRecord
  belongs_to :person
  belongs_to :vehicle
end
