class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :beer_tastings, :photo, "bytea USING photo::bytea"
  end
end
