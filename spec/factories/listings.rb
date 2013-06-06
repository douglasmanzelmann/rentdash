# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    title "YOLO"
    location "Up your butt"
    description "And around corner one. Then Corner two. And then back up your butt."
    rent 500
  end
end
