class RenameColumnTypeForTasting < ActiveRecord::Migration[6.0]
  def change
    rename_column :tastings, :type, :style
  end
end
