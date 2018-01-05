class Lead < ApplicationRecord

	belongs_to :professor
	belongs_to :correction_course
end
