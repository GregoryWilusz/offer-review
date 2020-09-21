FactoryBot.define do
  factory :salesman do
    sequence(:email) { |n| "salesman#{n}@example.com" }
    password { 'password' }
  end
end