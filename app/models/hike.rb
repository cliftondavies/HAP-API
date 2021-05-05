class Hike < ApplicationRecord
  validates :name, :main_image, :thumbnail_image, presence: true

  has_many :bookings, class_name: 'Appointment', foreign_key: :hike_id, inverse_of: :hike,
                      dependent: :destroy
  has_many :hikers, through: :bookings
end
