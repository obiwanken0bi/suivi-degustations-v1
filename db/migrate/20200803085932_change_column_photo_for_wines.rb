class ChangeColumnPhotoForWines < ActiveRecord::Migration[6.0]
  def change
    change_column :wine_tastings, :photo, "bytea USING photo::bytea"
  end
end
