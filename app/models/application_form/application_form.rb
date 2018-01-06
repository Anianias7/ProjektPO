module ApplicationForm
	class ApplicationForm < ApplicationRecord
		belongs_to :student, class_name: "Student::Student"
		has_one :correction_course, class_name: "Course::CorrectionCourse"

		has_many :professor_registers, class_name: "Professor::ProfessorRegister"
		has_many :professors, through: :professor_registers, class_name: "Professor::Professor"

		has_many :classroom_availabilities, class_name: "Classroom::ClassroomAvailabilities"
		has_many :classrooms, through: :classroom_availabilities, class_name: "Classroom::ClassroomAvailabilities"
	end
end
