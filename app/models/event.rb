class Event < ApplicationRecord
    has_many :products

    validates :name, presence: true
    validates :organizer, presence: true
    validates :event_date, presence: true
    validates :duration, presence: true
    validates :location, presence: true
    validates :status, presence: true 
end
