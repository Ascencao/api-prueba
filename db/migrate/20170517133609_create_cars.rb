class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :color
      t.references :garage, foreign_key: true

      t.timestamps
    end
  end
end
