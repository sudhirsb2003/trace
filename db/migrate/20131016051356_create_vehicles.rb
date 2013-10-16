class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_name
      t.string :driver_name
      t.integer :user_id
      t.string :vehicle_make
      t.string :vehicle_number
      t.boolean :not_in_use

      t.timestamps
    end
  end
end
