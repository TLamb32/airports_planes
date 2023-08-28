require 'rails_helper'

RSpec.describe Plane, type: :model do
  describe 'relationships' do
    it { should belong_to :airport }
  end

  describe 'validations' do
    it { should validate_presence_of :flight_name }
    it { should validate_presence_of :plane_model }
    it { should validate_presence_of :capacity }
    it { should allow_value(true).for(:on_time) }
    it { should allow_value(false).for(:on_time) }
  end
end