require 'rails_helper'

RSpec.describe "Api::Sessions", type: :request do
  let(:user) { create(:user) }
  let(:json) {JSON.parse(response.body) }
  let(:user_id) { user.id }
  let(:user_password) { user.password }
  let(:user_email) { user.email }

  describe "POST api/sessions" do
    context 'when it is invalid credentials' do
      it 'returns unauthorized' do
        params = { email: 'invalid@invalid.com', password: 'invalid' }

        post new_user_session_url,
             params: params,
             as: :json
        expect(response).to have_http_status(:unauthorized)
        expect(response).to have_http_status(401)
      end
    end

    context 'when it is valid credentials' do
      it 'returns successful auth response' do
        params = { user: { email: user_email, password: user_password} }

        post new_session_url,
             params: params,
             as: :json

        expect(response).to have_http_status(:success)
        expect(response.body).to include('token')
      end
    end

  end
end
