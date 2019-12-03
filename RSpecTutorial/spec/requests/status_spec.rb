require 'rails_helper'

RSpec.describe 'Status Requests' do
    describe 'GET /status' do
        it 'returns status message ' do
            get('/status')
            res_json = JSON.parse(response.body) #get hash based on json response {"status":"ok"}

            expect(res_json['status']).to eql("ok")
            expect(response.status).to eql(200)
        end
    end
end
