class CreateFavoriteDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_dishes do |t|
      t.integer :favorite_id
      t.integer :dish_id
      t.timestamps
    end
  end
end
