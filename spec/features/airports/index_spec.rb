# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

require 'rails_helper'

RSpec.describe "Airports index" do
  
  it "can display each parent record" do
    airport_1 = Airport.create(name: "Columbia", helipad: false, runways: 2)
    airport_2 = Airport.create(name: "Charlotte", helipad: true, runways: 4)

    visit "/airports"

    expect(page).to have_content("Airports")
    expect(current_path).to eq("/airports")
  end
end