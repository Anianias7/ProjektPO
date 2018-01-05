class ClassroomRegister < ApplicationRecord

	belongs_to :application_form
	belongs_to :classroom, class_name: "Classroom::Classroom"
end
