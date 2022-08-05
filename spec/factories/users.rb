FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {"test@hommail"}
    password              {"a1234567"}
    password_confirmation {"a1234567"}
    family_name           {"苗字"}
    family_name_kana      {"ミョウジ"}
    first_name            {"名前"}
    first_name_kana       {"ナマエ"}
    birth_date            {"2030-01-01"}
  end
end