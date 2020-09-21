require 'rails_helper'

RSpec.describe 'POST /api/v1/offers' do
  subject { post '/api/v1/offers', params: params }

  let(:params) { { user_id: user_id }}
  let(:user_id) { create(:user).id }

  it 'is a successful request' do
    subject

    expect(response).to have_http_status 201
  end
end