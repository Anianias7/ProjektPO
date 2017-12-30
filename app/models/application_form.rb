class ApplicationForm < ApplicationRecord
	belongs_to :student
	has_one :correction_course

	accepts_nested_attributes_for :correction_course, update_only: true
end
