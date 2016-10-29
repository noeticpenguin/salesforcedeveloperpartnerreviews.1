FactoryGirl.define do
  factory :review do
    user nil
    partner nil
    title "MyString"
    body "MyText"
    engaged_as_app_exchange_partner false
  end
end
