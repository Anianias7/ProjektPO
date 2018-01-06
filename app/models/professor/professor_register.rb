module Professor
	class ProfessorRegister < ApplicationRecord
		belongs_to :professor
		belongs_to :application_form, class_name: "ApplicationForm::ApplicationForm"
	end
end