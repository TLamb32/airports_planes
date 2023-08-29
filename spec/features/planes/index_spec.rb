# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)

require 'rails_helper'

RSpec.describe "Planes index" do
  describe "when a user visits /planes" do
    it "can display each child and their attributes do" do
      plane_1 = Plane.create(flight_name: "UAL7700", plane_model: "Boeing 737", capacity: 190, on_time: true)
      plane_2 = Plane.create(flight_name: "Chaos11", plane_model: "AC-130 Hercules", capacity: 22, on_time: true)

      visit "/planes"

      expect(page).to have_content("Planes")
      
    end
  end
end