require 'rails_helper'

RSpec.describe Console do
    subject {described_class.new(name: 'WII', manfacturer: 'Nintendo')}
    describe 'validation' do
        describe 'name' do
            it 'must be present' do
                subject.name = nil
                #Model class valid? method console.valid?
                expect(subject).to_not be_valid
                subject.name = "WII"
                expect(subject).to be_valid
                
            end
        end
        describe 'manufacturer' do
            it 'must be present' do
                subject.manfacturer= nil
                expect(subject).to_not be_valid
                subject.manfacturer = "Nintendo"
                expect(subject).to be_valid
            end
        end
    end

    describe '#formatted_name' do
        it 'returns the manf and name in a string' do
            expect(subject.formatted_name).to eql('Nintendo WII')
        end
    end

    #test a class method not an instance method
    #mentioned by using . method in descrbe
    #going to put a method where console.nintendo returns all the consoles 
    #manfactured by nintendo
    describe '.nintendo' do
        it 'returns an ActiveRecord::Relation of consoles manf by Nintendo' do
            wii = described_class.create(name: 'WII', manfacturer: 'Nintendo')
             
             switch = described_class.create(name: 'Switch', manfacturer: 'Nintendo')
             ps4 = described_class.create(name: 'PS4', manfacturer: 'Sony')
             expect(described_class.nintendo).to contain_exactly(wii, switch)

        end

    end

    
    
end