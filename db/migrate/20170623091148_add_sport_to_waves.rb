class AddSportToWaves < ActiveRecord::Migration[5.1]
  def change
    add_reference :waves, :sport, foreign_key: true
  end
end
