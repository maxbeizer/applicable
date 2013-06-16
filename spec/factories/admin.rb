FactoryGirl.define do
  factory :admin do
    sequence(:email) { |n| "admin#{n}@example.com" }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
end
