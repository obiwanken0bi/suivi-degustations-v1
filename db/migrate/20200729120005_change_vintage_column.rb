class ChangeVintageColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :wine_tastings, :vintage, :string
  end
end
