FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "person#{n}@example.com" }
    #email                 "pi@pi.com"
    password              "pi"
  end
end
