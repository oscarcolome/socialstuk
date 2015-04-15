FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    bio { Faker::Lorem.words(16) }
    age { Faker::Number.number(2) }
    gender { Faker::Lorem.words(1) }

    factory :invalid_user do
      username nil
      email nil
      password nil
      bio nil
      age nil
      gender nil
    end

    factory :user_with_posts do
      username { Faker::Internet.user_name }
      email { Faker::Internet.email }
      password { Faker::Internet.password }
      bio { Faker::Lorem.words(16) }
      age { Faker::Number.number(2) }
      gender { Faker::Lorem.words(1) }
      after(:create) do |user|
        create_list :post, user: user
      end
    end
  end
end
