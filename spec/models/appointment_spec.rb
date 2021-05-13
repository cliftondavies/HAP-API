require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:hiker) }
    it { is_expected.to validate_presence_of(:hike) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:city) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:hiker).class_name('User') }
    it { is_expected.to belong_to(:hike) }
  end
end
