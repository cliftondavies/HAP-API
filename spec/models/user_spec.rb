require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to validate_length_of(:name).is_at_least(4).is_at_most(20) }

    it { is_expected.to allow_value('test1@email.com').for(:email) }
    it { is_expected.not_to allow_value('test1email.com').for(:email) }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:bookings).with_foreign_key(:hiker_id).inverse_of(:hiker).dependent(:destroy) }

    it { is_expected.to have_many(:hikes).through(:bookings) }
  end
end
