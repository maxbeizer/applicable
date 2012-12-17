Fabricator(:student) do
  email { sequence(:email) { |i| "student#{i}@example.com"} }
  password "password"
  password_confirmation "password"
  first_name "first_name"
  date_of_birth "2012-12-12"
  archived false
end
