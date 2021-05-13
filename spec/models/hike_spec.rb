require 'rails_helper'

RSpec.describe Hike, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:main_image) }
    it { is_expected.to validate_presence_of(:thumbnail_image) }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:bookings).with_foreign_key(:hike_id).inverse_of(:hike).dependent(:destroy) }

    it { is_expected.to have_many(:hikers).through(:bookings) }
  end
end
