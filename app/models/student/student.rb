module Student
	class Student < ApplicationRecord
		has_many :application_forms, class_name: "ApplicationForm::ApplicationForm"
	end
end
