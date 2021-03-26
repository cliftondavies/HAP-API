class Appointment < ApplicationRecord
  validates :hiker, :hike, :date, :city, presence: true

  belongs_to :hiker, class_name: 'User'
  belongs_to :hike
end
