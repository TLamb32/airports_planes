class Plane < ApplicationRecord
  belongs_to :airport

  validates_presence_of :flight_name
  validates_presence_of :plane_model
  validates_presence_of :capacity
  validates :on_time, inclusion: [true, false]
end