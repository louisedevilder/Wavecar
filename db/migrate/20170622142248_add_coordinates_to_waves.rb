class AddCoordinatesToWaves < ActiveRecord::Migration[5.1]
  def change
    add_column :waves, :latitude, :float
    add_column :waves, :longitude, :float
  end
end
