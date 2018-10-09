class Reminder < ApplicationRecord
	validates :what, presence: true
end
