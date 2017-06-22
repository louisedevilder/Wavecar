class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :waves, :date, :datetime
  end
end
