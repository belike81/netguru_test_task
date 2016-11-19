FactoryGirl.define do
  factory :payment do
    student nil
    completion_date Faker::Date.between(50.days.ago, 2.days.ago)
  end

end
