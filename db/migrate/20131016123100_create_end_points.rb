class CreateEndPoints < ActiveRecord::Migration
  def change
    create_table :end_points do |t|
      t.text :address
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.integer :vehicle_id
      t.timestamps
    end
  end
end
