class ApplicationForm < ApplicationRecord
	belongs_to :student
	has_one :correction_course
end
