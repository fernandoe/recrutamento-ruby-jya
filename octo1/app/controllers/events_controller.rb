class EventsController < ApplicationController
  def create
    # client = Client.order('last_purchase')
    # render json: { status: 'SUCCESS', message: 'Client list.', data: client }, status: :ok
    render json: { status: 'SUCCESS' }
  end
end
