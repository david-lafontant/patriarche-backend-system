FactoryBot.define do
  factory :article do
    title { 'MyString' }
    subltitle { 'MyString' }
    description { 'MyText' }
    contenu { 'MyText' }
    contents { nil }
    user { nil }
  end
end
