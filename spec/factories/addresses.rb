FactoryBot.define do
  factory :address do
    contact { nil }
    street { "MyString" }
    number { "MyString" }
    district { "MyString" }
    city { "MyString" }
    state { "MyString" }
  end
end
