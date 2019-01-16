require 'rails_helper'

RSpec.describe User, type: :model do
 context "validations" do
    it "should save successfully" do
        user = User.new(name: 'Jjingo', phone_number: '+256704520128', username: 'Jjingo', email: 'sseguku@gmail.com', club_status: 'Rct Ssese', password: 'ihatepass', location: 'Sseguku Zone IV', access_level: 'user').save
        expect(user).to eq(true)  
    end
    it "ensures presence of name" do
        user = User.new( phone_number: '+256704520128', username: 'Jjingo', email: 'sseguku@gmail.com', club_status: 'Rct Ssese', password: 'ihatepass', location: 'Sseguku Zone IV', access_level: 'user').save
        expect(user).to eq(false)  
    end
    
    it "ensures presence of phone number" do
        user = User.new(name: 'Jjingo',  username: 'Jjingo', email: 'sseguku@gmail.com', club_status: 'Rct Ssese', password: 'ihatepass', location: 'Sseguku Zone IV', access_level: 'user').save
        expect(user).to eq(false)  
    end
    
    it "ensures presence of username" do
        user = User.new(name: 'Jjingo', phone_number: '+256704520128',  email: 'sseguku@gmail.com', club_status: 'Rct Ssese', password: 'ihatepass', location: 'Sseguku Zone IV', access_level: 'user').save
        expect(user).to eq(false)  
    end
    
    
    
    it "ensures presence of access_level" do
        user = User.new(name: 'Jjingo', phone_number: '+256704520128', username: 'Jjingo', email: 'sseguku@gmail.com', club_status: 'Rct Ssese', password: 'ihatepass', location: 'Sseguku Zone IV').save
        expect(user).to eq(false)  
    end
    
   
     
 end
 
end
