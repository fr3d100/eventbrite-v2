FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    encrypted_password { "azerty" }
    description { "This is a fuck** good description" }
    first_name { "Fred" }
    last_name { "Bnd" }
  end
end
