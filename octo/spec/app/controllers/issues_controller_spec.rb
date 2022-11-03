require 'rails_helper'

describe IssuesController, type: :controller do
  let!(:events) { create_list(:event, 3) }
  let!(:other_event) { create(:event, :event_type_other) }
  let(:identifier) { 20 }
  let!(:event1) { create(:event, identifier: 20) }
  let!(:event2) { create(:event, identifier: 20) }

  describe 'GET /issues/:identifier/events' do
    before { get :issues, params: { identifier: identifier } }

    context 'with valid issue number' do
      it 'should returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'should returns 2 items' do
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.size).to be(2)
      end
    end

    context 'with number that does not exists' do
      let(:identifier) { 999 }

      it 'should returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'should returns 0 items' do
        parsed_body = JSON.parse(response.body)
        expect(parsed_body.size).to be(0)
      end
    end
  end
end
