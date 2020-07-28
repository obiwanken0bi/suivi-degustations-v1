class CreateBeerTastings < ActiveRecord::Migration[6.0]
  def change
    create_table :beer_tastings do |t|
      t.string :name
      t.string :producer
      t.string :color
      t.string :type
      t.string :malts
      t.string :hops
      t.decimal :alcohol
      t.decimal :price
      t.date :tasting_date
      t.integer :rating
      t.text :comment
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
