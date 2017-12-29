class Application < ApplicationRecord
	belongs_to :student
	has_one :correction_course
end
