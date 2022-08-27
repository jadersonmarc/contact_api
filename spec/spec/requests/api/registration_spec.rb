require 'rails_helper'

RSpec.describe "Api::Registrations", type: :request do
  let(:user) { create(:user) }
  let(:json) {JSON.parse(response.body) }
  let(:user_id) { user.id }

  describe "POST api/registrations/create" do
    context 'when create authentication' do
      before do
        post  "/api/registrations", params: {user: {email: Faker::Internet.email, password: user.password, name: Faker::Name.name}}
      end
      it "create registration user" do
        expect(response).to have_http_status(200)
      end
    end

    context 'when invalid params' do
      before do
        post  "/api/registrations", params: {user: {email:"", password: "", name: Faker::Name.name}}
      end
      it "create registration user" do
        expect(response).to have_http_status(422)
      end
    end
  end
end
