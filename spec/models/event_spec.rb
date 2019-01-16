require 'rails_helper'

RSpec.describe Event, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  context 'validations' do
    it 'should save sucessfully' do
      event = Event.new(name: 'Banda Phase II', description: 'Joint project for ssese, rcnc, & yp', organizer: 'rct ssese', event_date: '26th October 2018', duration: 3, location: 'Banda Ssese Islands', status: 'completed').save
      expect(event).to eq(true)  
    end

    it 'ensures presence of name' do
      event = Event.new(description: 'Joint project for ssese, rcnc, & yp', organizer: 'rct ssese', event_date: '26th October 2018', duration: 3, location: 'Banda Ssese Islands', status: 'completed').save
      expect(event).to eq(false)  
    end

    it 'ensures presence of organizer' do
      event = Event.new(name: 'Banda Phase II', description: 'Joint project for ssese, rcnc, & yp', event_date: '26th October 2018', duration: 3, location: 'Banda Ssese Islands', status: 'completed').save
      expect(event).to eq(false)  
    end

    it 'ensures presence of event date' do
      event = Event.new(name: 'Banda Phase II', description: 'Joint project for ssese, rcnc, & yp', organizer: 'rct ssese',  duration: 3, location: 'Banda Ssese Islands', status: 'completed').save
      expect(event).to eq(false)  
    end

    it 'ensures presence of duration' do 
      event = Event.new(name: 'Banda Phase II', description: 'Joint project for ssese, rcnc, & yp', organizer: 'rct ssese', event_date: '26th October 2018', location: 'Banda Ssese Islands', status: 'completed').save
      expect(event).to eq(false)  
    end 
    
    it 'ensures presence of location' do 
      event = Event.new(name: 'Banda Phase II', description: 'Joint project for ssese, rcnc, & yp', organizer: 'rct ssese', event_date: '26th October 2018', duration: 3,  status: 'completed').save
      expect(event).to eq(false)  
    end

    it 'ensures presence of status' do 
      event = Event.new(name: 'Banda Phase II', description: 'Joint project for ssese, rcnc, & yp', organizer: 'rct ssese', event_date: '26th October 2018', duration: 3, location: 'Banda Ssese Islands').save
      expect(event).to eq(false)  
    end
  end
  
end
