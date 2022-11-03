FactoryBot.define do
  factory :event do
    event_type { 'issue' }
    identifier { Random.rand(10) }
    payload { { issue: { number: Random.rand(10) } } }

    trait :event_type_other do
      event_type { 'other' }
    end
  end
end
