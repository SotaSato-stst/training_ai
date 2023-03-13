FactoryBot.define do
  factory :workout do
    user { nil }
    name { "MyString" }
    feedback { "MyText" }
    startDate { "MyString" }
    endDate { "MyString" }
  end
end
