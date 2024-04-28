FactoryBot.define do
  factory :emission_content do
    title { "MyString" }
    description { "MyText" }
    content { nil }
    user { nil }
    emission { nil }
  end
end
