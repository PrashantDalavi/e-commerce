# frozen_string_literal: true

FactoryBot.define do
  sequence(:email) { |n| "test#{n}@example.com" }
  factory :user do
    email
    password {"123456"}
    first_name {"admin"}
    last_name {"dalavi"}
    admin {false}
  end

  factory :admin, class: User do
    email 
    password {"qwertyuiop"}
    admin {true}
    first_name {"Admin"}
    last_name {"User"}
  end
end
