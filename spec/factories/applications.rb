FactoryGirl.define do
  factory :application do
    student { FactoryGirl.create(:student) }
  end
end

