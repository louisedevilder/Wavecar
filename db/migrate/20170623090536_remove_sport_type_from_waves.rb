class RemoveSportTypeFromWaves < ActiveRecord::Migration[5.1]
  def change
    remove_column :waves, :sport_type, :string
  end
end
