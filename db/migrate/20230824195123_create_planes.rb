class CreatePlanes < ActiveRecord::Migration[7.0]
  def change
    create_table :planes do |t|
      t.string :flight_name
      t.string :plane_model
      t.integer :capacity
      t.boolean :on_time

      t.timestamps
    end
  end
end
