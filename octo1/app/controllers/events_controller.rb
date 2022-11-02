class EventsController < ApplicationController
  def create
    # client = Client.order('last_purchase')
    # render json: { status: 'SUCCESS', message: 'Client list.', data: client }, status: :ok

    information = request.raw_post
    data_parsed = JSON.parse(information)

    p information
    p data_parsed

    render json: { status: 'SUCCESS' }
  end
end
