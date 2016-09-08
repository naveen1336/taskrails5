class CreateVenues < ActiveRecord::Migration[5.0]
  def up
    create_table :venues do |t|
      t.string :name
      
      t.timestamps
    end
  end
  def down
  	drop_table :venues
  end

end
