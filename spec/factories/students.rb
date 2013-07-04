FactoryGirl.define do
  factory :student do
    sequence(:email) { |n| "student#{n}@example.com" }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
    first_name 'Joan'
    last_name 'Doe'
  end
end
