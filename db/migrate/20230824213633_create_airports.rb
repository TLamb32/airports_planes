class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :name
      t.boolean :helipad
      t.integer :runways

      t.timestamps
    end
  end
end
