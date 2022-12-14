FactoryBot.define do
  factory :user do
    first_name {"Test"}
    last_name {"Testador"}
    email {"test@tester.com"}
    password {"123456"}
    password_confirmation {"123456"}
    gender {"Masculino"}
    birthdate {"11/09/2000"}
    # Add additional fields as required via your User model
  end
end
