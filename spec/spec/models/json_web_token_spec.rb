require 'rails_helper'

RSpec.describe JsonWebToken, type: :model do
  let(:user) { create(:user) }
  let(:payload) { { sub: user.id, exp: 30.minutes.from_now.to_i } }

  context 'authentication by token jwt' do
    it 'generate a token' do
      jwt = JsonWebToken.encode(payload)
      decode = JsonWebToken.decode(jwt)
      expect(user.id).to eq(decode['sub'])
    end
  end

  context 'expiration token' do
    before do
      payload['exp'] = 0
    end

    it 'expired token' do
      jwt = JsonWebToken.encode(payload)
      expect { JsonWebToken.decode(jwt) }.to raise_error(JWT::ExpiredSignature)
    end
  end

end
