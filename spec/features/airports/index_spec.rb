# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

require 'rails_helper'

RSpec.describe "Airports index" do
  
  describe "when a user visits /airports" do
    it "can display each airport record" do
      airport_1 = Airport.create(name: "Columbia", helipad: false, runways: 2)
      airport_2 = Airport.create(name: "Charlotte", helipad: true, runways: 4)

      visit "/airports"

      expect(page).to have_content("Airports")
      expect(current_path).to eq("/airports")
    end
  end

  describe "when a user visits /airports/:id" do
    it "can show that airport id and attributes" do
      airport_1 = Airport.create(name: "Columbia", helipad: false, runways: 2)
      airport_2 = Airport.create(name: "Charlotte", helipad: true, runways: 4)

      visit "/airports/#{airport_1.id}"
      expect(page).to have_content airport_1.name
      expect(page).to have_content airport_1.helipad
      expect(page).to have_content airport_1.runways
      
      visit "/airports/#{airport_2.id}"
      expect(page).to have_content airport_2.name
      expect(page).to have_content airport_2.helipad
      expect(page).to have_content airport_2.runways
    end
  end
end