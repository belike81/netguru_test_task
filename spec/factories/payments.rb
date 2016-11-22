FactoryGirl.define do
  factory :payment do
    student
    amount Faker::Number.decimal(2, 2)
    completion_date Faker::Date.between(50.days.ago, 2.days.ago)
  end

end
