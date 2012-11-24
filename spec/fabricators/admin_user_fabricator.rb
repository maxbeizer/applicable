Fabricator(:admin_user) do
  email { sequence(:email) { |i| "admin#{i}@example.com"} }
  password "password"
end
