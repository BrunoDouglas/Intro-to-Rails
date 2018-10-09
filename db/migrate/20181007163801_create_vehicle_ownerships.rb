class CreateVehicleOwnerships < ActiveRecord::Migration[5.2]
  def change

    create_table :vehicles do |t|
      t.string :name
      t.string :origin
      t.string :manufacturer
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
