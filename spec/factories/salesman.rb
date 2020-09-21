FactoryBot.define do
  factory :salesman do
    sequence(:email) { |n| "salesman#{n}@example.com" }
  end
end