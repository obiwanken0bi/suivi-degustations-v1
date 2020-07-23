class RenameStyleColumnForTastings < ActiveRecord::Migration[6.0]
  def change
    rename_column :tastings, :style, :color
  end
end
