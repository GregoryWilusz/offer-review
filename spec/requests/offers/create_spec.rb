require 'rails_helper'

RSpec.describe 'POST /api/v1/offers' do
  subject { post '/api/v1/offers', params: params }

  let(:params) { { user_id: user_id, quantity: quantity } }
  let(:user_id) { create(:user).id }

  context 'when all required params are provided' do
    let(:quantity) { 15 }

    context 'and the user exists' do
      it 'is a successful request' do
        subject

        expect(response).to have_http_status 201
      end
    end

    context 'when user does not exist' do
      let(:user_id) { SecureRandom.uuid }

      it 'returns an error message' do
        subject

        expect(response.parsed_body)
          .to match('error' => "Couldn't find User with 'id'=#{user_id}")
      end
    end
  end
end