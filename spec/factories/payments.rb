FactoryGirl.define do
  factory :payment do
    student
    amount Faker::Number.decimal(2, 2)
    completion_date Faker::Date.between(50.days.ago, 2.days.ago)
    completion_month Faker::Number.between(1, 12)
  end

end
