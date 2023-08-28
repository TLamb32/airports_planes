class Airport < ApplicationRecord
  has_many :planes, dependent: :destroy

  validates_presence_of :name
  validates_presence_of :runways
  validates :helipad, inclusion: [true, false]
end