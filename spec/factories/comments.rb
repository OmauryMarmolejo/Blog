FactoryGirl.define do
  factory :comment do
    content {Faker::Larem.sentences}
  end
end
