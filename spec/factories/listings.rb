# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    title "MyString"
    location "MyString"
    description "MyText"
    rent 1
  end
end
