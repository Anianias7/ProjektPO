class Professor < ApplicationRecord
	has_many :leads
	has_many :correction_courses, through: :leads
end
