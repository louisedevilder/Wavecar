class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :cars, foreign_key: true
      t.references :riders, foreign_key: true
      t.references :cowaves, foreign_key: true

      t.timestamps
    end
  end
end
