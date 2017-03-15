FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password "example"
    password_confirmation "example"
  end
end
