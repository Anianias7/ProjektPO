module Professor
	class Professor < ApplicationRecord
		has_many :leads
		has_many :correction_courses, through: :leads, class_name: "Course::CorrectionCourse"
		
		has_many :professor_registers, class_name: "Professor::ProfessorRegister"
		has_many :application_forms, through: :professor_registers, class_name: "ApplicationForm::ApplicationForm"
	end
end