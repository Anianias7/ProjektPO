class Professor < ApplicationRecord
	has_many :leads
	has_many :correction_courses, through: :leads

	has_many :professor_registers
	has_many :application_forms, through: :professor_registers
end
