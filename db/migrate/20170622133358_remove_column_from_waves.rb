class RemoveColumnFromWaves < ActiveRecord::Migration[5.1]
  def change
    remove_column :waves, :departure_time, :time
  end
end
