# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exam do
    student_name "MyString"
    answers "MyText"
  end
end
