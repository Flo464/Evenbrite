class Event < ApplicationRecord


	validates :start_date, presence: true
    validates :duration, presence: true
    validates :title, presence: true
    validates :price, presence: true
    validates :location, presence: true
    validate :duration_multiple_5
    def duration_multiple_5
    	if self.duration.modulo(5) != 0 || self.duration < 0
    		errors.add(:duration, "WTF MEEEEEN")
    	end
    end
    validate :set_start_date
    def set_start_date
    	if self.start_date < Time.now
    		errors.add(:start_date, "WTF MEEEEEN")
    	end
    end

    validates :title, length: {in: 3..140}
    validates :description, length: {in: 1..1000}
    validates :price, inclusion: {in: 1..1000}

    has_many :users, through: :participations
    has_many :participations
end
