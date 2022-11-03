require 'rails_helper'

describe EventsController, type: :controller do
  describe 'POST /events' do
    subject { post :create, params: json_data, as: :json }

    context 'with valid json' do
      let(:json_data) { { action: 'opened', issue: { number: 123 } } }

      it 'returns status code 201' do
        subject
        expect(response).to have_http_status(:success)
      end

      it 'should add a new event.rb to the database' do
        expect { subject }.to change { Event.count }.by(1)
      end
    end

    context 'with invalid json - no number' do
      let(:json_data) { { action: 'opened', issue: {} } }

      it 'returns status code 400' do
        subject
        expect(response).to have_http_status(400)
      end

      it 'should not create an Event record' do
        expect { subject }.not_to change { Event.count }
      end
    end

    context 'with invalid json - no issue' do
      let(:json_data) { { action: 'opened' } }

      it 'returns status code 400' do
        subject
        expect(response).to have_http_status(400)
      end

      it 'should not create an Event record' do
        expect { subject }.not_to change { Event.count }
      end
    end
  end
end
