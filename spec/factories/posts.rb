FactoryGirl.define do
  factory :post do
    user
    content {Faker::Lorem.words(16)}

    factory :invalid_post do
      user nil
      content nil
    end
  end
end
