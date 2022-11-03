class Event < ApplicationRecord
  enum event_types: [:issue]

  scope :event_type_issue, -> { where(event_type: 'issue') }
  scope :filter_by_identifier, ->(identifier) { where identifier: identifier }
end
