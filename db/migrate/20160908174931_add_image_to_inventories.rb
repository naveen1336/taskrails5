class AddImageToInventories < ActiveRecord::Migration[5.0]
  def change
    add_column :inventories, :image, :string
  end
end
