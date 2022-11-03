class EventsController < ApplicationController
  def create
    raw_payload = request.raw_post
    payload_as_json = JSON.parse(raw_payload)

    if payload_as_json.key?('issue') && payload_as_json['issue'].key?('number')
      number = payload_as_json['issue']['number']

      payload = JSON.dump(payload_as_json)
      Event.create!(payload: payload, event_type: :issue, identifier: number)

      render json: payload_as_json
    else
      render status: 400
    end
  end
end
