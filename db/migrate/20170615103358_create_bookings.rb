class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :car, foreign_key: true
      t.references :rider, foreign_key: true
      t.references :cowave, foreign_key: true

      t.timestamps
    end
  end
end
