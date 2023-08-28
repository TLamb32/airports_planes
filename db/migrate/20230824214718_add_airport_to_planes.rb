class AddAirportToPlanes < ActiveRecord::Migration[7.0]
  def change
    add_reference :planes, :airport, null: false, foreign_key: true
  end
end
