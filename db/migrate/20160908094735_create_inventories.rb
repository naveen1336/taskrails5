class CreateInventories < ActiveRecord::Migration[5.0]
  def up
    create_table :inventories do |t|
      t.string :name
      t.decimal :price
      t.integer :venue_id
      t.string :category
      t.timestamps
    end
  end
  def down
  	drop_table :inventories
  end

end
