class User < ActiveRecord::Base
  extend Devise::Models

  before_save :format_input

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include DeviseTokenAuth::Concerns::User

  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL }
  validates :password, presence: true, length: { in: 6..16 }
  validates :name, presence: true, length: { in: 4..20 }

  has_many :bookings, class_name: 'Appointment', foreign_key: :hiker_id, inverse_of: :hiker,
                      dependent: :destroy

  has_many :hikes, through: :bookings

  private

  def format_input
    self.name = name.downcase.titleize
    self.email = email.downcase
  end
end
