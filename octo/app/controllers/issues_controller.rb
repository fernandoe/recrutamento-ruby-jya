class IssuesController < ApplicationController
  def issues
    identifier = params[:identifier]
    events = Event.event_type_issue.filter_by_identifier(identifier).select('payload').all
    render json: events.as_json(only: [:payload])
  end
end
