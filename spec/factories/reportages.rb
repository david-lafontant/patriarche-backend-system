FactoryBot.define do
  factory :reportage do
    title { 'MyString' }
    description { 'MyText' }
    contents { nil }
    user { nil }
  end
end
