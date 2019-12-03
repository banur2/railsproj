require 'rails_helper'

RSpec.describe 'Consoles requests' do
    describe 'Consoles /GET' do
        it 'return array of video console' do
            get('/consoles')
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly('WII', 'XBOX', 'Genesis')
            expect(json['consoles']).to include('WII')
        end
    end

    describe 'Consoles Manufacturer /GET' do
        it 'return array of video console with Manufactures' do
            get('/consolesMft')
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly('WII', 'XBOX', 'Genesis')
            expect(json['consoles']).to include('WII')
        end

        it 'return array of consoles for Manf sent as parameter' do
            get('/consolesByMft', params:{'manf':'Nintendo'})
            json = JSON.parse(response.body)
            expect(json['consoles']).to contain_exactly('NES','WII')
        
        end
    end
end