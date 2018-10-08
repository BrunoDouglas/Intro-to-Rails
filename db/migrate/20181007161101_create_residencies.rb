class CreateResidencies < ActiveRecord::Migration[5.2]

  def change

    #drop_table :neighbourhoods
    #drop_table :vehicle_ownerships
    #drop_table :vehicles
    #drop_table :manufacturers
    #drop_table :origins
    #drop_table :people

    create_table :people do |t|
      t.string :name
      t.integer :age
      t.references :neighbourhood, foreign_key: true

      t.timestamps
    end

    create_table :neighbourhoods do |t|
      t.string :name
      t.timestamps
    end

  end
end
