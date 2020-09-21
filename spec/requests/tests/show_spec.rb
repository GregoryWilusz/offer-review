require 'rails_helper'

RSpec.describe 'GET /api/v1/tests' do
  subject { get '/api/v1/tests' }

  it 'is a successful request' do
    subject

    expect(response).to have_http_status 200
  end

  it 'returns proper response' do
    subject

    expect(response.parsed_body).to match('success' => true)
  end
end