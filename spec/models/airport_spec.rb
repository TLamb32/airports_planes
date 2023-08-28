require 'rails_helper'

RSpec.describe Airport, type: :model do
  describe "relationships" do
    it { should have_many :planes }
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :runways }
    it { should allow_value(true).for(:helipad) }
    it { should allow_value(false).for(:helipad) }
  end
end