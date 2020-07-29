class ChangeTypeColumnInFamily < ActiveRecord::Migration[6.0]
  def change
    rename_column :beer_tastings, :type, :family
  end
end
