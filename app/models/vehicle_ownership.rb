class VehicleOwnership < ApplicationRecord
  belongs_to :owner
  belongs_to :vehicle
end
