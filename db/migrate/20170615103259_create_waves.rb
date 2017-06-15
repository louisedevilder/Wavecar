class CreateWaves < ActiveRecord::Migration[5.1]
  def change
    create_table :waves do |t|
      t.references :cars, foreign_key: true
      t.date :date
      t.time :departure_time
      t.string :departure_address
      t.string :arrival_address
      t.string :sport_type

      t.timestamps
    end
  end
end
