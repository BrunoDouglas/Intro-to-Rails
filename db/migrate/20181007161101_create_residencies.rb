class CreateResidencies < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.int :age
      t.timestamps
    end

    create_table :neighbourhoods do |t|
      t.string :name
      t.timestamps
    end

    create_table :residencies do |t|
      t.timestamps
    end

    create_table :residencies do |t|
      t.references :person, foreign_key: true
      t.references :neighbourhood, foreign_key: true

      t.timestamps
    end
end
