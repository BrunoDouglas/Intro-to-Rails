class CreateVehicleOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_types do |t|
      t.string :type

      t.timestamps
    end

    create_table :vehicle_makes do |t|
      t.string :name

      t.timestamps
    end

    create_table :vehicles do |t|
      t.string :name
      t.references :vehicletype, foreign_key: true
      t.references :vehiclemake, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end

    create_table :vehicle_ownerships do |t|
      t.references :person, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
