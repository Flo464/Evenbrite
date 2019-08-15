class Participation < ApplicationRecord
	belongs_to :user
	belongs_to :event

	after_create :participation_send

	def participation_send
		ParticipationMailer.new_participation(self).deliver_now
	end
end
