class CreateTastings < ActiveRecord::Migration[6.0]
  def change
    create_table :tastings do |t|
      t.string :category
      t.string :name
      t.string :producer
      t.string :type
      t.decimal :alcohol
      t.decimal :price
      t.integer :rating
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
