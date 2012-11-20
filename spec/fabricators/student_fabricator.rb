Fabricator(:student) do
  email { sequence(:email) { |i| "student#{i}@example.com"} }
  password "password"
  password_confirmation "password"
end
