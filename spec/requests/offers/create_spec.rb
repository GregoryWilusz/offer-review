require 'rails_helper'

RSpec.describe 'POST /api/v1/offers' do
  subject { post '/api/v1/offers', params: params }

  let(:params) { { client_id: client_id, quantity: quantity } }
  let(:client_id) { create(:client).id }
  let(:salesman) { create(:salesman) }

  context 'when all required params are provided' do
    let(:quantity) { 15 }

    context 'and the user exists' do
      it 'returns created offer' do
        subject

        expect(response.parsed_body).to match('quantity' => 15, 'client_id' => client_id)
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
