FactoryBot.define do
  factory :client do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { 'password' }
  end
end