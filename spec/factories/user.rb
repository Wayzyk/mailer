FactoryBot.define do
  factory :user do
    first_name { Faker::Name.unique.first_name }
    last_name { Faker::Name.unique.last_name }
    phone { Faker::PhoneNumber.cell_phone_with_country_code }
    email { Faker::Internet.email }
  end
end
