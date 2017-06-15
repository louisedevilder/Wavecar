class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.references :cowaves, foreign_key: true
      t.integer :place
      t.string :type
      t.string :brand

      t.timestamps
    end
  end
end
