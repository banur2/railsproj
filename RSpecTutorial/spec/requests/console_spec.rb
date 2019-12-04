require 'rails_helper'

RSpec.describe 'Consoles requests' do
    #Reusable code block
    let(:json) {JSON.parse(response.body)}
    describe 'Consoles /GET' do
        it 'return array of video console' do
            get('/consoles')
            #moved to re-usable block
            #json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly('WII', 'XBOX', 'Genesis')
            expect(json['consoles']).to include('WII')
        end
    end

    describe 'Consoles Manufacturer /GET' do
        it 'return array of video console with Manufactures' do
            get('/consolesMft')
            #moved to re-usable block
            #json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly('WII', 'XBOX', 'Genesis')
            expect(json['consoles']).to include('WII')
        end

        it 'return array of consoles for Manf sent as parameter' do
            get('/consolesByMft', params:{'manf':'Nintendo'})
            #moved to re-usable block
            #json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly('NES','WII')
        
        end
    end
end