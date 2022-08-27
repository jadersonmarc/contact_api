require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  it { expect(user).to respond_to(:email) }
  it { expect(user).to respond_to(:password_confirmation) }
  it { expect(user).to respond_to(:password) }

  context 'when email is blank' do
    before { user.email = " " }
    it { expect(user).to validate_presence_of(:email)}
  end

  context 'when password is blank' do
    before { user.password = " " }
    it { expect(user).to validate_presence_of(:password)}
  end

end
