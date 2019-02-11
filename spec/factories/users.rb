FactoryBot.define do
  factory :user do
    email { "fr3d100@yopmail.com" }
    encrypted_password { "azerty" }
    description { "This is a fuck** good description" }
    first_name { "Fred" }
    last_name { "Bnd" }
  end
end
