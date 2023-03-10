class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.integer :rating
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
