class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.integer :user_id
      t.string :user_type
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.date :journy_date
      t.boolean :employee_boarded

      t.timestamps
    end
  end
end
